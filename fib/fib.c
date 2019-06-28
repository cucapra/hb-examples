#include <bsg_manycore.h>
#include <bsg_set_tile_x_y.h>
#include <bsg_cuda_lite_runtime.h>

#include <stdint.h>

#include "../shared/bsg-device-communication.h"

// Set up the completion barrier.
#define BSG_TILE_GROUP_X_DIM bsg_tiles_X
#define BSG_TILE_GROUP_Y_DIM bsg_tiles_Y
#include "bsg_tile_group_barrier.h"
INIT_TILE_GROUP_BARRIER(r_barrier, c_barrier, 0, bsg_tiles_X - 1, 0,
    bsg_tiles_Y - 1);

void fib_0(void *c);
void fib_1(void *c);
void fib_2(void *c);
void fib_3(void *c);

int fib() {
    // API call to set the global tile ID values
    bsg_set_tile_x_y();
    int num_tiles = bsg_num_tiles;
    int tile_id = bsg_x_y_to_id(bsg_x, bsg_y);  

    switch(tile_id) {
        case 0:
            fib_0(0);
            break;

        case 1: 
            fib_1(0);
            break;

        case 2:
            fib_2(0);
            break;

        default:
            fib_3(0);
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
