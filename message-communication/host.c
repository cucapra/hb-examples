#define _BSD_SOURCE
#define _XOPEN_SOURCE 500

#include <bsg_manycore_cuda.h>
#include <bsg_manycore_loader.h>
#include <stdio.h>
#include <stdlib.h>

int _load_symbol_to_eva(hb_mc_device_t *device, const char *symbol, hb_mc_eva_t *eva) {
    return hb_mc_loader_symbol_to_eva(device->program->bin, device->program->bin_size, 
        symbol, eva);     
}

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

    // Look up the communication buffer and metadata symbols. "EVA" is for 
    // "endpoint virtual address," and it represents an address in the device's
    // memory. An EVA is simply backed by a uint32_t, so we can do standard
    // pointer-type arithmetic on it to access array memory.
    hb_mc_eva_t buffer_eva, ready_eva, start_idx_eva, size_eva, start_eva; 
    err = _load_symbol_to_eva(&device, "comms_buffer", &buffer_eva); 
    err |= _load_symbol_to_eva(&device, "comms_ready", &ready_eva); 
    err |= _load_symbol_to_eva(&device, "comms_start_idx", &start_idx_eva); 
    err |= _load_symbol_to_eva(&device, "comms_size", &size_eva); 
    err |= _load_symbol_to_eva(&device, "comms_buffer_start", &start_eva); 
    if (err != HB_MC_SUCCESS) { 
        fprintf(stderr, "hb_mc_loader_symbol_to_eva failed\n");
        return err;
    }

    int32_t ready = 1;
    int32_t start_idx = 0;
    int32_t int_size = sizeof(int32_t);
    for (int32_t i = 0; i < 4; i++) {
        // Get the tile coordinate for each tile. Not that because the first row 
        // is reserved for I/O, tile ID 0 corresponds to coordinate (0, 1) and
        // so on. 
        hb_mc_coordinate_t tile_coordinate = device.mesh->tiles[i].coord;

        // For each tile, write a value to the start of the communication buffer
        err = hb_mc_manycore_eva_write(device.mc, &default_map, &tile_coordinate,
            &buffer_eva, &i, int_size);

        // Then write the communication metadata values (array-based ones require
        // pointer arithmetic on the EVA values):
        // Ready flag
        hb_mc_eva_t ready_offset_eva = ready_eva + i * int_size;
        err |= hb_mc_manycore_eva_write(device.mc, &default_map, &tile_coordinate,
            &ready_offset_eva, &ready, int_size);

        // Start idx for each communication ID (use tile ID)
        hb_mc_eva_t start_idx_offset_eva = start_idx_eva + i * int_size;
        err |= hb_mc_manycore_eva_write(device.mc, &default_map, &tile_coordinate,
            &start_idx_offset_eva, &start_idx, int_size); 

        // Size for each communication ID (use tile ID)
        hb_mc_eva_t size_offset_eva = size_eva + i * int_size;
        err |= hb_mc_manycore_eva_write(device.mc, &default_map, &tile_coordinate,
            &size_offset_eva, &int_size, int_size);  

        // New start idx for that tile's buffer
        err |= hb_mc_manycore_eva_write(device.mc, &default_map, &tile_coordinate,
            &start_eva, &int_size, int_size);        

        if (err != HB_MC_SUCCESS) { 
            fprintf(stderr, "hb_mc_manycore_eva_write failed\n");
            return err;
        }  
    }

    // Run the function.
    err = hb_mc_device_tile_groups_execute(&device);
    if (err) return err;

    // Lookup the return EVA on the last tile
    hb_mc_eva_t global_return_eva; 
    err = hb_mc_loader_symbol_to_eva(device.program->bin, device.program->bin_size,
        "global_return", &global_return_eva); 
    if (err != HB_MC_SUCCESS) { 
        fprintf(stderr, "hb_mc_loader_symbol_to_eva failed\n");
        return err;
    }

    hb_mc_coordinate_t host_coordinate = hb_mc_manycore_get_host_coordinate(device.mc); 
    // EVA read the single return value
    err = hb_mc_manycore_eva_read(device.mc, &default_map, &host_coordinate,
        &global_return_eva, dest, int_size); 
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

    // Pass the number along core-to-core on device, adding to it each time
    int32_t dest;
    int err = do_communication(&dest);
    if (err) {
        return err;
    }

    printf("Final value from tile 3: %i\n", dest);

    return 0;
}