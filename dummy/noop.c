// Include these headers the intrinsics that device code needs.
#include "bsg_manycore.h"
#include "bsg_set_tile_x_y.h"
#include "bsg_cuda_lite_runtime.h"

#include <stdint.h>

// This incantation sets up the barrier synchronization we'll use below to
// signal completion of the kernel. `bsg_tiles_X` and `bsg_tiles_Y` are
// provided as definitions when compiling this kernel; the barrier header
// apparently wants them under different names.
#define BSG_TILE_GROUP_X_DIM bsg_tiles_X
#define BSG_TILE_GROUP_Y_DIM bsg_tiles_Y
#include "bsg_tile_group_barrier.h"
INIT_TILE_GROUP_BARRIER(r_barrier, c_barrier, 0, bsg_tiles_X - 1, 0,
    bsg_tiles_Y - 1);

// This is the function that we'll call (by name) from the host.
int noop(int32_t *val) {
    // Just write *something* through the pointer.
    *val = 0;

    // At the end of running the program in parallel, we need to synchronize
    // to tell the host that everyone's finished executing.
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
