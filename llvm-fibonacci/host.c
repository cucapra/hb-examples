#define _BSD_SOURCE
#define _XOPEN_SOURCE 500

#include <bsg_manycore_cuda.h>
#include <bsg_manycore_loader.h>

#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>

#include "../shared/bsg-host-communication.h"

const size_t TILES_X = 4;
const size_t TILES_Y = 4;

int do_fib(int32_t *dest) {
    int err;

    // Initialize the device.
    hb_mc_device_t device;
    err = hb_mc_device_init(&device, "example", 0);
    if (err) return err;

    // Load the `fib.riscv` program to be run on device.
    err = hb_mc_device_program_init(&device, "fib.riscv", "example", 0);
    if (err) return err;

    hb_mc_dimension_t grid_dim = {.x = 1, .y = 1};
    hb_mc_dimension_t tg_dim = {.x = TILES_X, .y = TILES_X};
    err = hb_mc_application_init(&device, grid_dim, tg_dim, "fib", 0, NULL);
    if (err) return err;

    // Run the function.
    err = hb_mc_device_tile_groups_execute(&device);
    if (err) return err;

    // Get the return value, which should be a single int sum
    receive_return(dest, sizeof(int), &device);

    // Clean up.
    err = hb_mc_device_finish(&device);
    if (err) return err;
}

int main(int argc, const char **argv) {
    int32_t dest;
    int err = do_fib(&dest);
    if (err) {
        return err;
    }

    printf("Final value: %i\n", dest);

    return 0;
}
