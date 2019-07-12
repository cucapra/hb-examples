#define _BSD_SOURCE
#define _XOPEN_SOURCE 500

#include <bsg_manycore_cuda.h>
#include <bsg_manycore_loader.h>

#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>

#include "../shared/bsg-host-communication.h"

const size_t TILES_X = 4;
const size_t TILES_Y = 4;

int do_matrix_multiply(double a[3][3], double b[3][3], double res[3][3]) {
    int err;

    // Initialize the device.
    hb_mc_device_t device;
    err = hb_mc_device_init(&device, "example", 0);
    if (err) return err;

    // Load the `fib.riscv` program to be run on device.
    err = hb_mc_device_program_init(&device, "matrix-multiply.riscv", "example", 0);
    if (err) return err;

    hb_mc_dimension_t grid_dim = {.x = 1, .y = 1};
    hb_mc_dimension_t tg_dim = {.x = TILES_X, .y = TILES_Y};
    err = hb_mc_application_init(&device, grid_dim, tg_dim, "matrix_multiply", 0, NULL);
    if (err) return err;

    // Look up the EVA on device for both input matrices
    hb_mc_eva_t a_eva, b_eva;
    err = hb_mc_loader_symbol_to_eva(device.program->bin, device.program->bin_size,
        "a", &a_eva);
    if (err) return err;
    err = hb_mc_loader_symbol_to_eva(device.program->bin, device.program->bin_size,
        "b", &b_eva);
    if (err) return err;

    // Copy each input matrix over
    hb_mc_coordinate_t host_coordinate = hb_mc_manycore_get_host_coordinate(device.mc);
    err =  hb_mc_manycore_eva_write(device.mc, &default_map, &host_coordinate,
        &a_eva, a, sizeof(double[3][3]));
    if (err) return err;
    err =  hb_mc_manycore_eva_write(device.mc, &default_map, &host_coordinate,
        &b_eva, b, sizeof(double[3][3]));
    if (err) return err;

    // Run the function.
    err = hb_mc_device_tile_groups_execute(&device);
    if (err) return err;

    // Lookup the start of the result EVA
    hb_mc_eva_t result_eva;
    err = hb_mc_loader_symbol_to_eva(device.program->bin, device.program->bin_size,
        "res", &result_eva);
    if (err) return err;

    // EVA read the results from the device 
    err = hb_mc_manycore_eva_read(device.mc, &default_map, &host_coordinate,
        &result_eva, res, sizeof(double[3][3]));
    if (err) return err;

    // Clean up.
    err = hb_mc_device_finish(&device);
    if (err) return err;
}

int main(int argc, const char **argv) {
    // Input matrices
    double a[3][3] = {{1, 1, 1}, {2, 2, 2}, {3, 3, 3}}; 
    double b[3][3] = {{1, 2, 3}, {1, 2, 3}, {1, 2, 3}}; 

    // Output result matrix
    double res[3][3];

    int err = do_matrix_multiply(a, b, &res);

    // Print the results read from the device
    for (int i = 0; i < 3; i++) { 
        for (int j = 0; j < 3; j++) {
            printf("%f ", res[i][j]); 
        }
        printf("\n"); 
    } 
    return 0;
}