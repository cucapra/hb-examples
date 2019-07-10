// Include these headers the intrinsics that device code needs.
#include "bsg_manycore.h"
#include "bsg_set_tile_x_y.h"
#include "bsg_cuda_lite_runtime.h"

// This incantation sets up the barrier synchronization we'll use below to
// signal completion of the kernel. `bsg_tiles_X` and `bsg_tiles_Y` are
// provided as definitions when compiling this kernel; the barrier header
// apparently wants them under different names.
// TK Why is this incantation necessary? What are the parameters actually
// doing?
#define BSG_TILE_GROUP_X_DIM bsg_tiles_X
#define BSG_TILE_GROUP_Y_DIM bsg_tiles_Y
#include "bsg_tile_group_barrier.h"
INIT_TILE_GROUP_BARRIER(r_barrier, c_barrier, 0, bsg_tiles_X - 1, 0,
    bsg_tiles_Y - 1);

// This is the function that we'll call (by name) from the host.
// TK I don't know if the return value is significant.
int print() {

    bsg_set_tile_x_y();
    int tile_id = bsg_x_y_to_id(bsg_x, bsg_y); 

    if (tile_id == 0) {
        // bsg_printf("Printing this string only once from tile 0 works fine\n");

        bsg_printf("This longer string will instead print multiple times,\
         and then the entire instance will hang.\
         xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\
         xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\
         xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\
         \n");
    } 

    // Uncommenting just this string works as expected
    // bsg_printf("This short string works\n");

    // Running with this string prints ~8 times then hangs
    // bsg_printf("This string is too long to print on all 16 cores in one run\n");

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
