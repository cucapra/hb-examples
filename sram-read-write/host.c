#define _BSD_SOURCE
#define _XOPEN_SOURCE 500

#define TILES 4

#include <bsg_manycore_cuda.h>
#include <bsg_manycore_loader.h>
#include <stdio.h>
#include <stdlib.h>

int do_sram_read_write(int32_t *dest) {
    int err;

    // Initialize the device.
    hb_mc_device_t device;
    hb_mc_dimension_t mesh_dim = {.x = 2, .y = 2};
    err = hb_mc_device_init(&device, "example", 0,  mesh_dim);
    if (err) return err;

    // Load the `sram-read-write.riscv` program to be run on device.
    err = hb_mc_device_program_init(&device, "sram-read-write.riscv", "example", 0);
    if (err) return err;

    // Look up the global value by symbol name in the device SRAM. "EVA" is for
    // "endpoint virtual address," and it represents an address in the device's
    // memory.
    hb_mc_eva_t global_value_eva; 
    err = hb_mc_loader_symbol_to_eva(device.program->bin, device.program->bin_size,
        "global_value", &global_value_eva); 
    if (err != HB_MC_SUCCESS) { 
        fprintf(stderr, "hb_mc_loader_symbol_to_eva failed\n");
        return err;
    }

    // Set up the tile group, dimensions, and function to call. The last two
    // arguments to `hb_mc_grid_init` specify the (empty) arguments to 
    // sram_read_write
    hb_mc_dimension_t grid_dim = {.x = 1, .y = 1};
    hb_mc_dimension_t tg_dim = {.x = 2, .y = 2};
    err = hb_mc_grid_init(&device, grid_dim, tg_dim, "local_sram_read_write", 0, NULL);
    if (err) return err;

    for (int32_t i = 0; i < TILES; i++) {
        // Get the tile coordinate for each tile. Note that because the first row 
        // is reserved for I/O, tile ID 0 corresponds to coordinate (0, 1) and
        // so on. We use the tile coordinates because we want to write different
        // values per tile.
        hb_mc_coordinate_t tile_coordinate = device.mesh->tiles[i].coord;

        // Write a _different_ value per tile (in this case, the tile ID)
        err =  hb_mc_manycore_eva_write(device.mc, &default_map, &tile_coordinate, 
            &global_value_eva, &i, sizeof(int32_t));
        if (err != HB_MC_SUCCESS) { 
            fprintf(stderr, "hb_mc_manycore_eva_write failed\n");
            return err;
        }  
    }

    // Run the function.
    err = hb_mc_device_tile_groups_execute(&device);
    if (err) return err;

    // Lookup the return EVA
    hb_mc_eva_t global_return_eva; 
    err = hb_mc_loader_symbol_to_eva(device.program->bin, device.program->bin_size,
        "global_return", &global_return_eva); 
    if (err != HB_MC_SUCCESS) { 
        fprintf(stderr, "hb_mc_loader_symbol_to_eva failed\n");
        return err;
    }

    // EVA read the four different return values (by tile coordinates)
    for (int32_t i = 0; i < TILES; i++) {
        hb_mc_coordinate_t tile_coordinate = device.mesh->tiles[i].coord;
        err = hb_mc_manycore_eva_read(device.mc, &default_map, &tile_coordinate,
            &global_return_eva, &(dest[i]), sizeof(int32_t[TILES])); 
        if (err) {
            fprintf(stderr, "hb_mc_device_memcpy to host failed\n");
            return err;
        }
    }

    // Clean up.
    err = hb_mc_device_finish(&device);
    if (err) return err;
}

int main(int argc, const char **argv) {
    // Read and write from SRAM!
    int32_t dest[TILES];
    int err = do_sram_read_write(dest);
    if (err) {
        return err;
    }

    // Print the value per tile (should be twice the tile ID)!
    for (int i = 0; i < TILES; ++i){
        printf("Value read from tile %i: %i\n", i, dest[i]);
    }

    return 0;
}