#include "bsg_manycore.h"
#include "bsg_set_tile_x_y.h"
#include "bsg_cuda_lite_runtime.h"

#include <stdint.h>

// Set up the completion barrier.
#define BSG_TILE_GROUP_X_DIM bsg_tiles_X
#define BSG_TILE_GROUP_Y_DIM bsg_tiles_Y
#include "bsg_tile_group_barrier.h"
INIT_TILE_GROUP_BARRIER(r_barrier, c_barrier, 0, bsg_tiles_X - 1, 0,
    bsg_tiles_Y - 1);

const int VALUE_COUNT = 9;  // Each tile reports 9 things.

// The function we call from the host.
int report(int32_t *outvals) {
    // __bsg_id is a zero-indexed number identifying each tile. So if we need
    // to reserve a "chunk" of a buffer for a particular tile, we can get use
    // an offset that's (__bsg_id * size_per_tile).
    int32_t *myvals = outvals + (__bsg_id * VALUE_COUNT);

    // Report each interesting value, in order.
    myvals[0] = __bsg_x;
    myvals[1] = __bsg_y;
    myvals[2] = __bsg_id;
    myvals[3] = __bsg_grp_org_x;
    myvals[4] = __bsg_grp_org_y;
    myvals[5] = __bsg_grid_dim_x;
    myvals[6] = __bsg_grid_dim_y;
    myvals[7] = __bsg_tile_group_id_x;
    myvals[8] = __bsg_tile_group_id_y;

    // Barrier to signal completion.
    bsg_tile_group_barrier(&r_barrier, &c_barrier);
    return 0;
}

int main() {
   __wait_until_valid_func();
   return 0;
}
