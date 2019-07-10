// The HammerBlade headers require these definitions before we include them.
// TK Find out why this is.
#define _BSD_SOURCE
#define _XOPEN_SOURCE 500

#include <bsg_manycore_cuda.h>
#include <stdio.h>

int main(int argc, const char **argv) {
    int err;

    // Initialize the manycore device. We need to provide dimensions for the
    // "mesh" here.
    // TK I don't know what a "mesh" actually is.
    // TK I don't know if the "name" parameter here matters.
    hb_mc_device_t device;
    err = hb_mc_device_init(&device, "example", 0);
    if (err) {
        fprintf(stderr, "error in hb_mc_device_init\n");
        return err;
    }

    // Load the RISC-V binary onto the device.
    // TK I don't know if the `alloc_name` parameter does anything important.
    err = hb_mc_device_program_init(&device, "noop.riscv", "example", 0);
    if (err) {
        fprintf(stderr, "error in hb_mc_device_program_init\n");
        return err;
    }

    // Set up the "tile groups" and "grid." We also specify the function
    // name and set the arguments (`argc` and `argv`) for the function we'll
    // eventually call.
    // The dimensions of the tile group are set to 2x2 here, which matches
    // some build-time parameters set in our Makefile. 2x2 is the largest tile
    // group I have gotten to work yet---I would have assumed 4x3 would work
    // (4x4, but with the first row taken up by I/O tiles), but this is where
    // we are for now. `grid_dim` seems to control the _number_ of 2x2 tile
    // groups---it seems like this should _always_ be 1x1 (I'm not sure why
    // you would want anything else).
    // TK Check that 2x2 is indeed the largest usable size on F1.
    // TK I don't entirely know what a "tile group" or a "grid" actually is.
    hb_mc_dimension_t grid_dim = {.x = 1, .y = 1};
    hb_mc_dimension_t tg_dim = {.x = bsg_tiles_X, .y = bsg_tiles_Y};
    err = hb_mc_application_init(&device, grid_dim, tg_dim, "noop", 0, NULL);
    if (err) {
        fprintf(stderr, "error in hb_mc_grid_init\n");
        return err;
    }

    // Run the program on the device.
    err = hb_mc_device_tile_groups_execute(&device);
    if (err) {
        fprintf(stderr, "error in hb_mc_device_tile_groups_execute\n");
        return err;
    }

    // Clean up.
    err = hb_mc_device_finish(&device);
    if (err) {
        fprintf(stderr, "error in hb_mc_device_finish\n");
        return err;
    }

    return 0;
}
