#define _BSD_SOURCE
#define _XOPEN_SOURCE 500

#include <bsg_manycore_cuda.h>
#include <stdio.h>
#include <stdlib.h>

int do_add(int src1, int src2, int *dest) {
    int err;

    // Initialize the device.
	hb_mc_device_t device;
	hb_mc_dimension_t mesh_dim = {.x = 2, .y = 2};
	err = hb_mc_device_init(&device, "example", 0,  mesh_dim);
    if (err) return err;

    // Load the `add.riscv` program.
	err = hb_mc_device_program_init(&device, "add.riscv", "example", 0);
    if (err) return err;

    // Allocate space on the device for the three arguments we'll pass to the
    // function. "EVA" is for "endpoint virtual address," and it represents
    // an address in the device's memory.
    eva_t src1_addr, src2_addr, dest_addr;
    err  = hb_mc_device_malloc(&device, sizeof(int32_t), &src1_addr);
    err |= hb_mc_device_malloc(&device, sizeof(int32_t), &src2_addr);
    err |= hb_mc_device_malloc(&device, sizeof(int32_t), &dest_addr);
    if (err) {
		fprintf(stderr, "hb_mc_device_malloc failed\n");
		return err;
    }

    // Copy input data into the newly allocated space.
    // TK Why does the `eva_t` need to be converted to a `void*` here?
    // Shouldn't this function take an `eva_t` as an argument?
    err  = hb_mc_device_memcpy(&device, (void*)((intptr_t)src1_addr),
        &src1, sizeof(int32_t), hb_mc_memcpy_to_device);
    err |= hb_mc_device_memcpy(&device, (void*)((intptr_t)src2_addr),
        &src2, sizeof(int32_t), hb_mc_memcpy_to_device);
    if (err) {
		fprintf(stderr, "hb_mc_device_memcpy to device failed\n");
		return err;
    }

    // Set up the tile group, dimensions, and function to call.
	hb_mc_dimension_t grid_dim = {.x = 1, .y = 1};
	hb_mc_dimension_t tg_dim = {.x = 2, .y = 2};
	err = hb_mc_grid_init(&device, grid_dim, tg_dim, "add", 0, NULL);
    if (err) return err;

    // Run the function.
	err = hb_mc_device_tile_groups_execute(&device);
    if (err) return err;

    // Collect the result by copying output data back over from the device.
    err = hb_mc_device_memcpy(&device, dest, (void*)((intptr_t)dest_addr),
        sizeof(uint32_t), hb_mc_memcpy_to_host);
    if (err) {
		fprintf(stderr, "hb_mc_device_memcpy to host failed\n");
		return err;
    }

    // Clean up.
	err = hb_mc_device_finish(&device);
    if (err) return err;
}

int main(int argc, const char **argv) {
    // We take two arguments from the command line.
    uint32_t src1, src2;
    if (argc < 3) {
        fprintf(stderr, "usage: %s num1 num2\n", argv[0]);
        return 1;
    }
    src1 = atoi(argv[1]);
    src2 = atoi(argv[2]);

    // Do the addition on the device.
    uint32_t dest;
    int err = do_add(src1, src2, &dest);
    if (err) return err;

    // Print the answer!!!1
    printf("%i + %i = %i\n", src1, src2, dest);

	return 0;
}
