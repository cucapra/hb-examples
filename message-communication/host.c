#define _BSD_SOURCE
#define _XOPEN_SOURCE 500

#include <bsg_manycore_cuda.h>
#include <bsg_manycore_loader.h>

#include <stdio.h>
#include <stdlib.h>

#include "../shared/bsg-host-communication.h"

int do_communication(int32_t *dest) {
    int err;

    // Initialize the device.
    hb_mc_device_t device;
    hb_mc_dimension_t mesh_dim = {.x = 2, .y = 2};
    err = hb_mc_device_init(&device, "example", 0,  mesh_dim);
    if (err) return err;

    // Load the `communication.riscv` program to be run on device.
    err = hb_mc_device_program_init(&device, "communication.riscv", "example", 0);
    if (err) return err;

    // Set up the tile group, dimensions, and function to call. The last two
    // arguments to `hb_mc_grid_init` specify the arguments to the `communicate`
    // function in the device code.
    hb_mc_dimension_t grid_dim = {.x = 1, .y = 1};
    hb_mc_dimension_t tg_dim = {.x = 2, .y = 2};
    err = hb_mc_grid_init(&device, grid_dim, tg_dim, "communicate", 0, NULL);
    if (err) return err;

    int32_t int_size = sizeof(int32_t);
    for (int32_t i = 0; i < 4; i++) {
        // Send each core it's tile ID as an argument
        send_argument(&i, int_size, i, i, &device);
    }

    // Run the function.
    err = hb_mc_device_tile_groups_execute(&device);
    if (err) return err;

    // Get the return value, which should be a single int sum
    receive_return(dest, int_size, &device);

    // Clean up.
    err = hb_mc_device_finish(&device);
    if (err) return err;
}

int main(int argc, const char **argv) {
    // We take an argument from the command line for the starting number

    // Pass the number along core-to-core on device, adding to it each time
    int32_t dest;
    int err = do_communication(&dest);
    if (err) {
        return err;
    }

    printf("Final value from tile 3: %i\n", dest);

    return 0;
}