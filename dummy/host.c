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
    hb_mc_device_t device;
    hb_mc_dimension_t mesh_dim = {.x = 2, .y = 2};
    err = hb_mc_device_init(&device, "example", 0,  mesh_dim);
    if (err) {
        fprintf(stderr, "error in hb_mc_device_init\n");
        return err;
    }

    // Load the RISC-V binary onto the device.
    err = hb_mc_device_program_init(&device, "noop.riscv", "example", 0);
    if (err) {
        fprintf(stderr, "error in hb_mc_device_program_init\n");
        return err;
    }

    // Allocate one word on the device.
    eva_t val_addr;
    err = hb_mc_device_malloc(&device, sizeof(int32_t), &val_addr);
    if (err) {
        fprintf(stderr, "hb_mc_device_malloc failed\n");
        return err;
    }

    // The arguments to pass to the device-side function.
    uint32_t args[] = {val_addr};

    // Set up the "tile groups" and "grid." We also specify the function
    // name and set the arguments (`argc` and `argv`) for the function we'll
    // eventually call.
    hb_mc_dimension_t grid_dim = {.x = 1, .y = 1};
    hb_mc_dimension_t tg_dim = {.x = 2, .y = 2};
    err = hb_mc_grid_init(&device, grid_dim, tg_dim, "noop", 1, args);
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
