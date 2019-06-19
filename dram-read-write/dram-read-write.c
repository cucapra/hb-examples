#include "bsg_manycore.h"
#include "bsg_set_tile_x_y.h"
#include "bsg_cuda_lite_runtime.h"
#include "bsg_tilegroup.h"

#include <stdint.h>
#include <stdio.h>

// Note: these attributes specify that this is shared DRAM memory
volatile int32_t global_value __attribute__((section(".dram")));
volatile int32_t global_return[4] __attribute__((section(".dram")));

// Set up the completion barrier.
#define BSG_TILE_GROUP_X_DIM bsg_tiles_X
#define BSG_TILE_GROUP_Y_DIM bsg_tiles_Y
#include "bsg_tile_group_barrier.h"
INIT_TILE_GROUP_BARRIER(r_barrier, c_barrier, 0, bsg_tiles_X - 1, 0,
    bsg_tiles_Y - 1);

int dram_read_write() {
    // API call to set the global tile ID values
    bsg_set_tile_x_y();
    int num_tiles = bsg_num_tiles;
    int tile_id = bsg_x_y_to_id(bsg_x, bsg_y);

    // Each tile adds their ID to the value in the return array
    global_return[tile_id] = global_value + tile_id;

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
