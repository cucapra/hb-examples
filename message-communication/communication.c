#include "bsg_manycore.h"
#include "bsg_set_tile_x_y.h"
#include "bsg_cuda_lite_runtime.h"
#include "bsg_tilegroup.h"

#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>

// --- Communication buffer number of elements ---

// NUM_COMMS should be defined from the compiler/Makefile
#ifndef NUM_COMMS
#define NUM_COMMS 100
#endif // NUM_COMMS

#ifndef COMMS_BUFFER_SIZE
#define COMMS_BUFFER_SIZE NUM_COMMS * sizeof(long long)
#endif // NUM_COMMS

// --- Communication buffer metadata ---
volatile int32_t comms_ready[NUM_COMMS];     // Communication data for the ID is ready to be read
volatile int32_t comms_start_idx[NUM_COMMS]; // Start index into the data buffer
volatile int32_t comms_size[NUM_COMMS];      // Size of the value for this communication

// --- Communication buffer ---
// Data and metadata should be kept on the *receiving* tile's memory
volatile char comms_buffer[COMMS_BUFFER_SIZE];

// Treat the communication buffer as a linear buffer for now
volatile int32_t comms_buffer_start = 0;

// Return value. Note this attribute specifies that this is shared DRAM memory
volatile int32_t global_return  __attribute__((section(".dram")));

// Set up the completion barrier.
#define BSG_TILE_GROUP_X_DIM bsg_tiles_X
#define BSG_TILE_GROUP_Y_DIM bsg_tiles_Y
#include "bsg_tile_group_barrier.h"
INIT_TILE_GROUP_BARRIER(r_barrier, c_barrier, 0, bsg_tiles_X - 1, 0,
    bsg_tiles_Y - 1);


void copy(char *dest, char *src, unsigned len) {
    while (len) {
        *dest = *src;
        dest++;
        src++;
        len -= sizeof(char);
    }
}

void send(void *value, int size, int to_core, int id, void *context) {
    // Construct coordinates
    int to_x = bsg_id_to_x(to_core);
    int to_y = bsg_id_to_y(to_core);

    // Grab the start of the communication buffer for the recepient
    int start_idx;
    bsg_remote_load(to_x, to_y, &comms_buffer_start, start_idx);

    // Increment the recepient's buffer start by the size
    bsg_remote_store(to_x, to_y, &comms_buffer_start, start_idx + size);

    // Set the communication buffer metadata on the recepient for this ID
    bsg_remote_store(to_x, to_y, &comms_start_idx[id], start_idx);
    bsg_remote_store(to_x, to_y, &comms_size[id], size);

    // Write the actual value into the communication buffer on the recepient
    char *buffer_value_ptr = (void *)bsg_remote_ptr(to_x, to_y, &comms_buffer[start_idx]);    
    copy(buffer_value_ptr, value, size);

    // Finally, write out to the recepient that this value is ready
    bsg_remote_store(to_x, to_y, &comms_ready[id], 1);
}

void *_receive_shared(int size, int from_core, int id, void *context) {
    // Wait patiently until the value is ready
    bsg_wait_while(!comms_ready[id]);

    // Metdata should already be written by sender
    int start_idx = comms_start_idx[id];
    int actual_size = comms_size[id];

    // Sanity check sizes match
    if (actual_size != size) {
        // TODO: error on device
    }

    // Return this address into the buffer
    return &comms_buffer[start_idx];
}

void *receive(int size, int from_core, int id, void *context) {
    void *value = _receive_shared(size, from_core, id, context);

    // Regular reads should be destructive: the value is no longer ready
    comms_ready[id] = 0;

    // Return this address into the buffer
    return value;
}

void *receive_argument(int size, int from_core, int id, void *context) {
    // Argument reads should not be destructive
    return _receive_shared(size, from_core, id, context);;   
}

int communicate(int32_t *src, int32_t *dest) {

    // API call to set the global tile ID values
    bsg_set_tile_x_y();
    int num_tiles = bsg_num_tiles;
    int tile_id = bsg_x_y_to_id(bsg_x, bsg_y);  

    int int_size = sizeof(int32_t);
    int32_t host_id = -1;
    int32_t value, valueFrom0, valueFrom1, valueFrom2;
    switch(tile_id) {
        case 0:
            // Receive a value from the host
            value = *(int32_t *)receive_argument(int_size, host_id, tile_id, NULL);

            // Because the value is an argument, we should be able to read it twice
            value = *(int32_t *)receive_argument(int_size, host_id, tile_id, NULL);

            // Forward this value to tile 3, communication ID 4
            send(&value, int_size, 3, 4, NULL);
            break;

        case 1:
            // Receive a value from the host
            value = *(int32_t *)receive_argument(int_size, host_id, tile_id, NULL);

            // Forward this value to tile 3, communication ID 5
            send(&value, int_size, 3, 5, NULL);
            break;

        case 2:
            // Receive a value from the host
            value = *(int32_t *)receive_argument(int_size, host_id, tile_id, NULL);

            // Forward this value to tile 3, communication ID 6
            send(&value, int_size, 3, 6, NULL);
            break;

        default:
            // Receive a value from the host
            value = *(int32_t *)receive_argument(int_size, host_id, tile_id, NULL);

            // Receive forwarded values from other tiles
            valueFrom0 = *(int32_t *)receive(int_size, 0, 4, NULL);
            valueFrom1 = *(int32_t *)receive(int_size, 0, 5, NULL);
            valueFrom2 = *(int32_t *)receive(int_size, 0, 6, NULL);

            // Should be 0 + 1 + 2 + 3 = 6
            global_return = value + valueFrom0 + valueFrom1 + valueFrom2;
            break;
    }

    // Barrier to signal completion.
    bsg_tile_group_barrier(&r_barrier, &c_barrier);
    return 0;
}

// This program is a complete executable, so it needs a main. Our main just
// needs to call this function to wait for instructions (i.e., to call the
// function above).
int main() {
   __wait_until_valid_func();
   return 0;
}
