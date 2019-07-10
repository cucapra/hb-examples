#include "bsg_manycore.h"
#include "bsg_set_tile_x_y.h"
#include "bsg_cuda_lite_runtime.h"
#include "bsg_tilegroup.h"

#include <stdint.h>
#include <stdio.h>

// Set up the completion barrier.
#define BSG_TILE_GROUP_X_DIM bsg_tiles_X
#define BSG_TILE_GROUP_Y_DIM bsg_tiles_Y
#include "bsg_tile_group_barrier.h"
INIT_TILE_GROUP_BARRIER(r_barrier, c_barrier, 0, bsg_tiles_X - 1, 0,
    bsg_tiles_Y - 1);

// Statically allocate space for a value (on each core)
volatile int32_t value;

// Statically allocate a flag for whether the value is ready
volatile int32_t ready; 

int communicate(int32_t *src, int32_t *dest) {
    int x, y;

    // API call to set the global tile ID values
    bsg_set_tile_x_y();
    int num_tiles = bsg_num_tiles;
    int tile_id = bsg_x_y_to_id(bsg_x, bsg_y);  

    // Switch on tile ID of the current core
    switch(tile_id) {
        case 0:
            bsg_printf("Core 0 received the starting value (%d)\n", *src);

            // The core 0 reads the argument from the host and adds 1
            value = *src + 1;

            // Get the coordinates of core 1 to send to
            x = bsg_id_to_x(1);
            y = bsg_id_to_y(1);

            // Remote store the data in value to the corresponding address on (x, y) 
            bsg_remote_store(x, y, &value, value);

            // Remote set the destination's ready flag
            bsg_remote_store(x, y, &ready, 1);
            break;

        // The "last" core 
        case (bsg_tiles_X * bsg_tiles_Y - 1):
            // Simply wait and sets the final value dest to be read by the host
            bsg_wait_while(!ready);

            bsg_printf("Core %d, final value (%d)\n", tile_id, value);
            *dest = value;
            break;

        default:
            // Wait on the local ready flag
            bsg_wait_while(!ready);

            bsg_printf("Core %d, value (%d)\n", tile_id, value);

            // After waiting, value should be received from the previous core.
            // Increment it by 1
            value += 1;

            // Send the new value to the next core
            x = bsg_id_to_x(tile_id + 1);
            y = bsg_id_to_y(tile_id + 1);
            bsg_remote_store(x, y, &value, value);
            bsg_remote_store(x, y, &ready, 1);
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
