#include "bsg_manycore.h"
#include "bsg_set_tile_x_y.h"

#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>

volatile char global_return[100]  __attribute__((section(".dram")));

void copy(char *dest, char *src, unsigned len) {
    while (len) {
        *dest = *src;
        dest++;
        src++;
        len -= sizeof(char);
    }
}

void send(void *value, int32_t size, int32_t to_core, int32_t addr, void *context) {
    // HB memory operations require word-aligned pointers, *not* byte-aligned!
    // The struct layout is:
    //   { 
    //     value   [size bytes],
    //     ready   [1 byte],
    //     padding [4 bytes],
   //.   }
    int size_with_ready = size + 1;
    int aligned_size = (size_with_ready + 3) / 4 * 4;

    // Construct coordinates
    int to_x = bsg_id_to_x(to_core);
    int to_y = bsg_id_to_y(to_core);

    // Make sure we aren't overwriting the old value.
    // Ready may not be word aligned, but we need to read the whole word.
    // Read it into our *local* struct for convenience
    int ready_addr = addr + size;
    int ready_word_addr = ready_addr / 4 * 4;
    while (*(char *)ready_addr) {
        bsg_remote_load(to_x, to_y, ready_word_addr, *(int *)ready_word_addr);
    }

    // Copy the new value and ready flag to our *local* version of the struct
    copy((char *)addr, value, size);
    *((char *)addr + size) = 1;

    // Write our local struct to the *remote* destination struct
    void *remote = bsg_remote_ptr(to_x, to_y, (int)addr);
    copy(remote, (char *)addr, aligned_size);
}

void send_return(void *value, int32_t size, void *context) {
    copy((char *)global_return, value, size);
}

void *_receive_shared(int32_t size, int32_t addr, void *context) {
    // Wait patiently until the value is ready
    bsg_wait_while(!*((volatile char *)addr + size));

    // Return this address into the buffer
    return (void *)addr;
}

void *receive(int32_t size, int32_t from_core, int32_t addr, void *context) {
    // Return this address into the buffer
    return _receive_shared(size, addr, context);;
}

void free_comms(int32_t addr, int size, void *context) {
    // Reset our location struct's ready flag to 0
    volatile char *ready_ptr = (volatile char *)addr + size;
    *ready_ptr = '\0';
}

void *receive_argument(int32_t size, int32_t addr, void *context) {
    // Argument reads should not be destructive
    return _receive_shared(size, addr, context);;   
}

void send_token(int to_core, int addr, void *context) {
}

void receive_token(int addr, void *context) {
}
