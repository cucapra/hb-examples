#include <bsg_manycore.h>
#include <bsg_set_tile_x_y.h>
#include <bsg_cuda_lite_runtime.h>

#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>

#include "bsg-device-communication.h"

// Set up the completion barrier.
#define BSG_TILE_GROUP_X_DIM bsg_tiles_X
#define BSG_TILE_GROUP_Y_DIM bsg_tiles_Y
#include "bsg_tile_group_barrier.h"
INIT_TILE_GROUP_BARRIER(r_barrier, c_barrier, 0, bsg_tiles_X - 1, 0,
    bsg_tiles_Y - 1);

int communicate(int32_t *src, int32_t *dest) {

    // API call to set the global tile ID values
    bsg_set_tile_x_y();
    int num_tiles = bsg_num_tiles;
    int tile_id = bsg_x_y_to_id(bsg_x, bsg_y);  

    int int_size = sizeof(int32_t);
    int32_t value, valueFrom0, valueFrom1, valueFrom2;
    switch(tile_id) {
        case 0:
            // Receive a value from the host
            value = *(int32_t *)receive_argument(int_size, tile_id, NULL);

            // Because the value is an argument, we should be able to read it twice
            value = *(int32_t *)receive_argument(int_size, tile_id, NULL);

            // Forward this value to tile 3, communication ID 4
            send(&value, int_size, 3, 4, NULL);
            break;

        case 1:
            // Receive a value from the host
            value = *(int32_t *)receive_argument(int_size, tile_id, NULL);

            // Forward this value to tile 3, communication ID 5
            send(&value, int_size, 3, 5, NULL);
            break;

        case 2:
            // Receive a value from the host
            value = *(int32_t *)receive_argument(int_size, tile_id, NULL);

            // Forward this value to tile 3, communication ID 6
            send(&value, int_size, 3, 6, NULL);
            break;

        default:
            // Receive a value from the host
            value = *(int32_t *)receive_argument(int_size, tile_id, NULL);

            // Receive forwarded values from other tiles
            valueFrom0 = *(int32_t *)receive(int_size, 0, 4, NULL);
            valueFrom1 = *(int32_t *)receive(int_size, 0, 5, NULL);
            valueFrom2 = *(int32_t *)receive(int_size, 0, 6, NULL);

            // Should be 0 + 1 + 2 + 3 = 6
            value = value + valueFrom0 + valueFrom1 + valueFrom2;
            send_return(&value, int_size, NULL);
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
