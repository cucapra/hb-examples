// Include these two headers for access to intrinsics for the manycore.
#include "bsg_manycore.h"
#include "bsg_set_tile_x_y.h"

// This is the function that we'll call (by name) from the host.
// TK I don't know if the return value is significant.
int noop() {
    return 0;
}

// This program is a complete executable, so it needs a main. Our main just
// needs to call this function to wait for instructions (i.e., to call the
// function above).
int main() {
   __wait_until_valid_func();
   return 0;
}
