#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>

#include <bsg_manycore.h>
#include <bsg_set_tile_x_y.h>
#include <bsg_cuda_lite_runtime.h>

#include "../shared/bsg-device-communication.h"

extern int comms0;
extern int comms1;

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
    int32_t value = 1;
    switch(tile_id) {
        case 0:
            for (int i = 0; i < 10000; ++i) {
                // Send a value to the destination
                send(&value, int_size, DESTINATION_ID, (int)&comms0, NULL);

                 // Receive a value from the destination, communication ID 1
                value = *(int32_t *)receive(int_size, 1, (int)&comms1, NULL);
                free_comms((int)&comms1, int_size, NULL);
            }
            break;

        case DESTINATION_ID:
            for (int i = 0; i < 10000; ++i) {
                 // Receive a value from the source, communication ID 0
                value = *(int32_t *)receive(int_size, 0, (int)&comms0, NULL);
                free_comms((int)&comms0, int_size, NULL);

                // Send a value to the source, communication ID 1
                send(&value, int_size, 0, (int)&comms1, NULL);
            }
            break;

        default:
            break;
    }

    // Barrier to signal completion.
    bsg_tile_group_barrier(&r_barrier, &c_barrier);
    return 0;
}

int main() {
   __wait_until_valid_func();
   return 0;
}
