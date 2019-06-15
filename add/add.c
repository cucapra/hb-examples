#include "bsg_manycore.h"
#include "bsg_set_tile_x_y.h"
#include "bsg_cuda_lite_runtime.h"

#include <stdint.h>

// TK Why is this incantation necessary? What are the parameters?
#define BSG_TILE_GROUP_X_DIM bsg_tiles_X
#define BSG_TILE_GROUP_Y_DIM bsg_tiles_Y
#include "bsg_tile_group_barrier.h"
INIT_TILE_GROUP_BARRIER(r_barrier, c_barrier, 0, bsg_tiles_X - 1, 0,
    bsg_tiles_Y - 1);

// The function we call from the host. Communication with the host works by
// leaving results in memory for the host to pick up.
int add(int32_t *src1, int32_t *src2, int32_t *dest) {
    *dest = *src1 + *src2;

    // TK Explain what's going on with this completion barrier. It should
    // probably go in the no-op too.
    bsg_tile_group_barrier(&r_barrier, &c_barrier);

    return 0;
}

int main() {
   __wait_until_valid_func();
   return 0;
}
