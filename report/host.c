#define _BSD_SOURCE
#define _XOPEN_SOURCE 500

#include <bsg_manycore_cuda.h>
#include <stdio.h>
#include <stdlib.h>

int do_report(int32_t *outvals, size_t size) {
    int err;

    // Initialize the device.
    hb_mc_device_t device;
    err = hb_mc_device_init(&device, "example", 0);
    if (err) return err;

    // Load the `report.riscv` program.
    err = hb_mc_device_program_init(&device, "report.riscv", "example", 0);
    if (err) return err;

    // Allocate space on the device for the result.
    eva_t out_addr;
    err = hb_mc_device_malloc(&device, size, &out_addr);
    if (err) return err;

    // Set up the grid, group, and function. There's only one argument.
    hb_mc_dimension_t grid_dim = {.x = 1, .y = 1};
    hb_mc_dimension_t tg_dim = {.x = bsg_tiles_X, .y = bsg_tiles_Y};
    err = hb_mc_application_init(&device, grid_dim, tg_dim, "report", 1, &out_addr);
    if (err) return err;

    // Run the function.
    err = hb_mc_device_tile_groups_execute(&device);
    if (err) return err;

    // Collect the result by copying output data back over from the device.
    err = hb_mc_device_memcpy(&device, outvals, (void*)((intptr_t)out_addr),
        size, HB_MC_MEMCPY_TO_HOST);
    if (err) return err;

    // Clean up.
    err = hb_mc_device_finish(&device);
    if (err) return err;
}

const int TILE_COUNT = bsg_tiles_X * bsg_tiles_Y;  // Our group of tiles.
const int VALUE_COUNT = 9;  // Each tile reports 9 things.
const char *VALUE_NAMES[] = {
    "__bsg_x",
    "__bsg_y",
    "__bsg_id",
    "__bsg_grp_org_x",
    "__bsg_grp_org_y",
    "__bsg_grid_dim_x",
    "__bsg_grid_dim_y",
    "__bsg_tile_group_id_x",
    "__bsg_tile_group_id_y",
};

int main(int argc, const char **argv) {
    int32_t vals[TILE_COUNT][VALUE_COUNT];
    int err = do_report(vals[0], sizeof(int32_t) * TILE_COUNT * VALUE_COUNT);
    if (err) return err;

    for (size_t i = 0; i < TILE_COUNT; ++i) {
        printf("Tile %i:\n", i);
        for (size_t j = 0; j < VALUE_COUNT; ++j) {
            printf("  %s = %i\n", VALUE_NAMES[j], vals[i][j]);
        }
    }

    return 0;
}
