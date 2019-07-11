#include "bsg_manycore.h"
#include "bsg_set_tile_x_y.h"

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

// --- Communication buffer ---
// Data and metadata should be kept on the *receiving* tile's memory
volatile char comms_buffer[COMMS_BUFFER_SIZE];

// --- Communication buffer metadata ---
// Communication data for the ID is ready to be read
volatile int32_t comms_ready[NUM_COMMS];
// Start index into the data buffer
volatile int32_t comms_start_idx[NUM_COMMS];
// Size of the value for this communication
volatile int32_t comms_size[NUM_COMMS];

// Treat the communication buffer as a linear buffer for now
volatile int32_t comms_buffer_start = 0;

// Hacky write lock for now!
volatile int32_t write_lock = 0;

// Return value(s). Note this attribute specifies that this is shared DRAM memory
volatile char global_return[COMMS_BUFFER_SIZE]  __attribute__((section(".dram")));

void _aquire_remote_write_lock(int to_x, int to_y) {
    volatile int write_lock_taken = 1;
    while (write_lock_taken) {
        bsg_remote_load(to_x, to_y, &write_lock, write_lock_taken);
    }

    // Mark that we are writing 
    bsg_remote_store(to_x, to_y, &write_lock, 1);
}

void _release_remote_write_lock(int to_x, int to_y) {
    // Mark that we are done writing 
    bsg_remote_store(to_x, to_y, &write_lock, 0);
}

void _aquire_local_write_lock() {
    bsg_wait_while(write_lock);
    write_lock = 1;
}

void _release_local_write_lock() {
    // Mark that we are done writing 
    write_lock = 0;

}

void copy(char *dest, char *src, unsigned len) {
    while (len) {
        *dest = *src;
        dest++;
        src++;
        len -= sizeof(char);
    }
}

// When sending something twice, don't add to the end!!!
void send(void *value, int32_t size, int32_t to_core, int32_t id, void *context) {
    // HB memory operations require word-aligned pointers, *not* byte-aligned!
    int aligned_size = (size + 3) / 4 * 4;

    // Construct coordinates
    int to_x = bsg_id_to_x(to_core);
    int to_y = bsg_id_to_y(to_core);

    // Make sure we aren't overwriting the old value 
    int remote_ready = 1;
    while (remote_ready) {
        bsg_remote_load(to_x, to_y, &comms_ready[id], remote_ready);
    }

    // Make sure no one else is writing to the buffer right now
    _aquire_remote_write_lock(to_x, to_y);

    // Check if we already have taken a spot for this ID
    int existing_size;
    bsg_remote_load(to_x, to_y, &comms_size[id], existing_size);

    int start_idx;

    // If we don't already have a spot, create one
    if (existing_size == 0) {
        // Grab the start of the communication buffer for the recepient
        bsg_remote_load(to_x, to_y, &comms_buffer_start, start_idx);

        // Increment the recepient's buffer start by the size
        bsg_remote_store(to_x, to_y, &comms_buffer_start, start_idx + aligned_size);

        // Set the communication buffer metadata on the recepient for this ID
        bsg_remote_store(to_x, to_y, &comms_start_idx[id], start_idx);
        bsg_remote_store(to_x, to_y, &comms_size[id], aligned_size);
    } else {
        bsg_remote_load(to_x, to_y, &comms_start_idx[id], start_idx);
    }

    // Write the actual value into the communication buffer on the recepient
    char *buffer_value_ptr = (void *)bsg_remote_ptr(to_x, to_y, 
        &comms_buffer[start_idx]);    
    copy(buffer_value_ptr, value, size);

    // Finally, write out to the recepient that this value is ready
    bsg_remote_store(to_x, to_y, &comms_ready[id], 1);

    // Mark that we are done writing 
    _release_remote_write_lock(to_x, to_y);
}

void send_return(void *value, int32_t size, void *context) {
    copy(global_return, value, size);
}

void *_receive_shared(int32_t size, int32_t id, void *context) {
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

void *receive(int32_t size, int32_t from_core, int32_t id, void *context) {
    void *value = _receive_shared(size, id, context);

    _aquire_local_write_lock();

    // Regular reads should be destructive: the value is no longer ready
    comms_ready[id] = 0;

    _release_local_write_lock();

    // Return this address into the buffer
    return value;
}

void *receive_argument(int32_t size, int32_t id, void *context) {
    // Argument reads should not be destructive
    return _receive_shared(size, id, context);;   
}

void send_token(int to_core, int id, void *context) {
    // Construct coordinates
    int to_x = bsg_id_to_x(to_core);
    int to_y = bsg_id_to_y(to_core);

    // Make sure no one else is writing right now
    _aquire_remote_write_lock(to_x, to_y);

    // Write out to the recepient that this token is ready
    bsg_remote_store(to_x, to_y, &comms_ready[id], 1);

    // Mark that we are done writing 
    _release_remote_write_lock(to_x, to_y);
}

void receive_token(int id, void *context) {
    // Wait patiently until we get the token
    bsg_wait_while(!comms_ready[id]);
    
    _aquire_local_write_lock();
    // Regular reads should be destructive: the value is no longer ready
    comms_ready[id] = 0;

    _release_local_write_lock();
}
