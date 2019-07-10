// The HammerBlade headers require these definitions before we include them.
// TK Find out why this is.
#define _BSD_SOURCE
#define _XOPEN_SOURCE 500

#include <bsg_manycore_cuda.h>
#include <stdio.h>

int main(int argc, const char **argv) {
    int err;

    // Initialize the manycore device. 
    hb_mc_device_t device;
    err = hb_mc_device_init(&device, "example", 0);
    if (err) {
        fprintf(stderr, "error in hb_mc_device_init\n");
        return err;
    }

    // Load the RISC-V binary onto the device.
    err = hb_mc_device_program_init(&device, "print.riscv", "example", 0);
    if (err) {
        fprintf(stderr, "error in hb_mc_device_program_init\n");
        return err;
    }

    // Set up the "tile groups" and "grid." We also specify the function
    // name and set the arguments (`argc` and `argv`) for the function we'll
    // eventually call.
    hb_mc_dimension_t grid_dim = {.x = 1, .y = 1};
    hb_mc_dimension_t tg_dim = {.x = bsg_tiles_X, .y = bsg_tiles_Y};
    err = hb_mc_application_init(&device, grid_dim, tg_dim, "print", 0, NULL);
    if (err) {
        fprintf(stderr, "error in hb_mc_application_init\n");
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
