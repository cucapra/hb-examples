#include "bsg_manycore.h"
#include "bsg_set_tile_x_y.h"
#include "bsg_cuda_lite_runtime.h"

#include <stdint.h>

// The function we call from the host. Communication with the host works by
// leaving results in memory for the host to pick up.
int add(int32_t *src1, int32_t *src2, int32_t *dest) {
    *dest = *src1 + *src2;
    return 0;
}

int main() {
   __wait_until_valid_func();
   return 0;
}
