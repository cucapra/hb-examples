HammerBlade Examples
====================

This is a collection of self-contained, hackable, documented examples for running on HammerBlade on F1.


Running the Examples
--------------------

Then, the best way to actually run the examples is with [Chazz][].
Set it up, then do something like this to send this repository to the server:

    $ chazz sync -w . mystuff

Then, in another terminal, type `chazz ssh` and then:

    $ cd mystuff
    $ make -C noop run

Each example comes with a `run` target in its Makefile, so just type `make run` to build and execute the example.
The current version of the HammerBlade image targeted by the `master` branch is `v3.0.6`.

[chazz]: https://github.com/cucapra/chazz


The Examples
------------

The examples are arranged in order of increasing complexity:

- `noop`: Just execute a function on the device that does literally nothing at all.
- `add`: Add together two integers passed via DRAM. Shows how to "malloc" space on the device, "memcpy" input data into this space, pass arguments to device-side functions, and copy outputs back out from the device.
- `report`: Get the SPMD-style identifying information for every tile in a group. Demonstrates such mysterious magic as `__bsg_id` and `__bsg_grid_dim_x`. Shows how to use them to "divide up" a buffer into per-tile segments.
- `dram-read-write`: Demonstrates reading and writing from device DRAM using the lower-level API and symbol name lookups. Each tile reads a global value, and writes that value plus their tile ID to a return array.
- `sram-read-write`: Demonstrates reading and writing from device tile-local SRAM using the lower-level API and symbol name lookups. We write a different value to each tile's statically allocated global variable, and read a different value from a return variable.
- `inter-tile-communication`: Shows simple inter-tile communication. Each tile passes a single value by writing into the next tile's memory. Demonstrates basic synchronization with `bsg_wait_while` and `bsg_remote_store`. 
- `message-communication`: Shows inter-tile communication using a linear buffer per tile. Each tile receives a single argument to their buffer from the host. The first 3 tiles then forward messages to the final tile by writing into its memory. The final tile writes the return (the sum of all values) back to DRAM. Uses `send`/`receive` calls written on top of the `bsg_remote_load` and `bsg_remote_store` primitives.
- `llvm-fibonacci`: Calculates the 10th fibonacci number from automatically-partitioned LLVM IR. The main device file, `fib.c`, calls a different function for each of the first two cores from the LLVM IR file, `fibonacci_loop_cores.ll`.

There is also an old example, `v0.4.2-vvadd`, which only works on an earlier version. It demonstrates a much different style of host/device communication that does not use the higher-level, "CUDA-style" API.


Tips for Hacking Locally
------------------------

For more enjoyable hacking, you'll want to get [HammerBlade F1 headers][hbf1lib] and [manycore headers][mclib] and set your editor's include path to point to them.
A simple way to do that is to check out the [Bladerunner][] repository and run `make checkout-repos` to clone the component repositories and move to the right revision.

On a Mac, you need a few changes to make things compile: delete the entire contents of `bsg_f1/cl_manycore/libraries/bsg_manycore_features.h`, and change every occurrence of `#include <endian.h>` to `#include <machine/endian.h>` (patch for this off of 92643b8 [here][bsg_f1_macos_patch]).

Then, configure your editor to add these include paths (starting from wherever you checked out [`bsg_bladerunner`][bladerunner]):

    bsg_bladerunner/bsg_f1_92643b8/cl_manycore/libraries
    bsg_bladerunner/bsg_manycore_8241449/software/bsg_manycore_lib

The former has headers for host code, and the latter has headers for device code.

[hbf1lib]: https://github.com/bespoke-silicon-group/bsg_f1/tree/master/cl_manycore/libraries
[mclib]: https://github.com/bespoke-silicon-group/bsg_manycore/tree/master/software/bsg_manycore_lib
[bsg_f1_macos_patch]: https://gist.github.com/avanhatt/d6df1eb375486f8aee9f8a74e8303168
[bladerunner]: https://github.com/bespoke-silicon-group/bsg_bladerunner
