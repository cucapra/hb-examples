#include <bsg_manycore.h>
#include <bsg_set_tile_x_y.h>
#include <bsg_cuda_lite_runtime.h>

#include <stdint.h>

// Set up the completion barrier.
#define BSG_TILE_GROUP_X_DIM bsg_tiles_X
#define BSG_TILE_GROUP_Y_DIM bsg_tiles_Y
#include "bsg_tile_group_barrier.h"
INIT_TILE_GROUP_BARRIER(r_barrier, c_barrier, 0, bsg_tiles_X - 1, 0,
    bsg_tiles_Y - 1);

#ifdef PROBLEM
int64_t yyy;
#else
int32_t yyy;
#endif

#include "problem.c"

static void uart_send_char(char c) {
  bsg_putchar( c );
}

int bsg_printf_x()
{
  char buf[256],*p;
  int n=0;

  ee_vsprintf(buf);
  p=buf;

  while (*p) {
	uart_send_char(*p);
	n++;
	p++;
  }

  return n;
}

int communicate(int32_t *src, int32_t *dest) {
    bsg_printf_x();

    // Barrier to signal completion.
    bsg_tile_group_barrier(&r_barrier, &c_barrier);
    return 0;
}

// This program is a complete executable, so it needs a main. Our main just
// needs to call this function to wait for instructions (i.e., to call the
// function above).
int main() {
   __wait_until_valid_func();
   return 0;
}
