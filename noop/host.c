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
	hb_mc_dimension_t mesh_dim = {.x = 4, .y = 4};
	err = hb_mc_device_init(&device, "example", 0,  mesh_dim);
	if (err != HB_MC_SUCCESS) {
        fprintf(stderr, "error in hb_mc_device_init\n");
		return err;
	}

    // Load the RISC-V binary onto the device.
    // TK I don't know if the `alloc_name` parameter does anything important.
	err = hb_mc_device_program_init(&device, "noop.riscv", "example", 0);
	if (err != HB_MC_SUCCESS) {
		fprintf(stderr, "error in hb_mc_device_program_init\n");
		return err;
	}

    // Set up the "tile groups" and "grid." We also specify the function
    // name and set the arguments (`argc` and `argv`) for the function we'll
    // eventually call.
    // TK I don't know what a "tile group" or a "grid" actually is.
	hb_mc_dimension_t grid_dim = {.x = 1, .y = 1};
	hb_mc_dimension_t tg_dim = {.x = 2, .y = 2};
	err = hb_mc_grid_init(&device, grid_dim, tg_dim, "noop", 0, NULL);
	if (err != HB_MC_SUCCESS) {
		fprintf(stderr, "error in hb_mc_grid_init\n");
		return err;
	}

    // Run the program on the device.
	err = hb_mc_device_tile_groups_execute(&device);
	if (err != HB_MC_SUCCESS) {
		fprintf(stderr, "error in hb_mc_device_tile_groups_execute\n");
		return err;
	}

    // Clean up.
	err = hb_mc_device_finish(&device);
	if (err != HB_MC_SUCCESS) {
		fprintf(stderr, "error in hb_mc_device_finish\n");
		return err;
	}

	return 0;
}
