#define _BSD_SOURCE
#define _XOPEN_SOURCE 500
#include <bsg_manycore_cuda.h>
#include <bsg_manycore_loader.h>

#include <stdlib.h>
#include <string.h>

int align_size(int size) {
    return (size + 3) / 4 * 4;
}

int _load_symbol_to_eva(hb_mc_device_t *device, const char *symbol, hb_mc_eva_t *eva) {
    return hb_mc_loader_symbol_to_eva(device->program->bin, device->program->bin_size, 
        symbol, eva);     
}

void send_argument(void *value, int32_t size, int32_t to_core, int32_t addr, void *context) {
    int err;

    // HB memory operations require word-aligned pointers, *not* byte-aligned!
    // Round the value size plus 1 bye for the ready flag up to the nearest word.
    int aligned_size = align_size(size + 1);

    // Create a local aligned memory to copy the value and ready flag from
    void *local_struct = malloc(aligned_size);
    memcpy(local_struct, value, size);

    // Ready is always offset from the address by the value size
    *(char *)(local_struct + size) = 1;
    
    // Context is the device
    hb_mc_device_t *device = (hb_mc_device_t *)context;

    // Get the tile coordinate for each tile. Not that because the first row 
    // is reserved for I/O, tile ID 0 corresponds to coordinate (0, 1) and
    // so on. 
    hb_mc_coordinate_t tile_coordinate = device->mesh->tiles[to_core].coord;

    // Write the local struct to the tile's copy of the struct
    hb_mc_eva_t tile_struct_eva = (hb_mc_eva_t)addr;
    err = hb_mc_manycore_eva_write(device->mc, &default_map, &tile_coordinate,
        &tile_struct_eva, local_struct, aligned_size); 
}

void receive_return(void *value, int32_t size, void *context) {
    int err;

    // HB memory operations require word-aligned pointers, *not* byte-aligned!
    size = align_size(size);

    // Context is the device
    hb_mc_device_t *device = (hb_mc_device_t *)context;

    // Lookup the return EVA in DRAM
    hb_mc_eva_t global_return_eva; 
    err = _load_symbol_to_eva(device, "global_return", &global_return_eva);
    if (err != HB_MC_SUCCESS) { 
        fprintf(stderr, "hb_mc_loader_symbol_to_eva failed\n");
        return;
    }

    // EVA read the single return value
    hb_mc_coordinate_t host_coordinate = hb_mc_manycore_get_host_coordinate(device->mc); 
    err = hb_mc_manycore_eva_read(device->mc, &default_map, &host_coordinate,
        &global_return_eva, value, size); 
    if (err) {
        fprintf(stderr, "hb_mc_device_memcpy to host failed\n");
    }
}