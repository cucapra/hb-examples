#define _BSD_SOURCE
#define _XOPEN_SOURCE 500

#include <bsg_manycore_cuda.h>
#include <bsg_manycore_loader.h>

#include <stdio.h>
#include <stdlib.h>

const size_t TILES_X = 4;
const size_t TILES_Y = 4;

int do_communication() {
    int err;

    // Initialize the device.
    hb_mc_device_t device;
    err = hb_mc_device_init(&device, "example", 0);
    if (err) return err;

    // Load the `communication.riscv` program to be run on device.
    err = hb_mc_device_program_init(&device, "device.riscv", "example", 0);
    if (err) return err;

    // Set up the tile group, dimensions, and function to call. The last two
    // arguments to `hb_mc_application_init` specify the arguments to the `communicate`
    // function in the device code.
    hb_mc_dimension_t grid_dim = {.x = 1, .y = 1};
    hb_mc_dimension_t tg_dim = {.x = TILES_X, .y = TILES_Y};
    err = hb_mc_application_init(&device, grid_dim, tg_dim, "communicate", 0, NULL);
    if (err) return err;

    // Run the function.
    err = hb_mc_device_tile_groups_execute(&device);
    if (err) return err;

    // Clean up.
    err = hb_mc_device_finish(&device);
    if (err) return err;
}

int main(int argc, const char **argv) {
    printf("Starting\n");
    int err = do_communication();
    if (err) {
        return err;
    }
    printf("Done\n");
    return 0;
}
