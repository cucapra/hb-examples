#define _BSD_SOURCE
#define _XOPEN_SOURCE 500

#include <bsg_manycore_cuda.h>
#include <stdio.h>
#include <stdlib.h>

const size_t TILES_X = 4;
const size_t TILES_Y = 4;

int do_communication(int32_t src1, int32_t *dest) {
    int err;

    // Initialize the device.
    hb_mc_device_t device;
    err = hb_mc_device_init(&device, "example", 0);
    if (err) return err;

    // Load the `communication.riscv` program to be run on device.
    err = hb_mc_device_program_init(&device, "communication.riscv", "example", 0);
    if (err) return err;

    // Allocate space on the device for the two arguments we'll pass to the
    // function. "EVA" is for "endpoint virtual address," and it represents
    // an address in the device's memory.
    eva_t src1_addr, dest_addr;
    err  = hb_mc_device_malloc(&device, sizeof(int32_t), &src1_addr);
    err |= hb_mc_device_malloc(&device, sizeof(int32_t), &dest_addr);
    if (err) {
        fprintf(stderr, "hb_mc_device_malloc failed\n");
        return err;
    }

    // Copy input data into the newly allocated space.
    // TK Why does the `eva_t` need to be converted to a `void*` here?
    // Shouldn't this function take an `eva_t` as an argument?
    err  = hb_mc_device_memcpy(&device, (void*)((intptr_t)src1_addr),
        &src1, sizeof(int32_t), HB_MC_MEMCPY_TO_DEVICE);
    if (err) {
        fprintf(stderr, "hb_mc_device_memcpy to device failed\n");
        return err;
    }

    // The arguments to pass to the device-side function. While the type here
    // is uint32_t, these are all actually pointers---arguments must be
    // word-sized numbers.
    uint32_t args[] = {src1_addr, dest_addr};

    // Set up the tile group, dimensions, and function to call. The last two
    // arguments to `hb_mc_application_init` specify the arguments to the `communicate`
    // function in the device code.
    hb_mc_dimension_t grid_dim = {.x = 1, .y = 1};
    hb_mc_dimension_t tg_dim = {.x = TILES_X, .y = TILES_Y};
    err = hb_mc_application_init(&device, grid_dim, tg_dim, "communicate", 2, args);
    if (err) return err;

    // Run the function.
    err = hb_mc_device_tile_groups_execute(&device);
    if (err) return err;

    // Collect the result by copying output data back over from the device.
    err = hb_mc_device_memcpy(&device, dest, (void*)((intptr_t)dest_addr),
        sizeof(int32_t), HB_MC_MEMCPY_TO_HOST);
    if (err) {
        fprintf(stderr, "hb_mc_device_memcpy to host failed\n");
        return err;
    }

    // Clean up.
    err = hb_mc_device_finish(&device);
    if (err) return err;
}

int main(int argc, const char **argv) {
    // We take an argument from the command line for the starting number
    int32_t src1;
    if (argc < 2) {
        fprintf(stderr, "usage: %s num1\n", argv[0]);
        return 1;
    }
    src1 = atoi(argv[1]);

    // Pass the number along core-to-core on device, adding to it each time
    int32_t dest;
    int err = do_communication(src1, &dest);
    if (err) {
        return err;
    }

    // Print the answer!
    printf("Starting value: %i\nFinal value: %i\n", src1, dest);

    return 0;
}
