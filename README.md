HammerBlade Examples
====================

This is a collection of self-contained, hackable, documented examples for running on HammerBlade on F1.


Setup Tips
----------

For more enjoyable hacking, you'll want to get [HammerBlade F1 headers][hbf1lib] and set your editor's include path to point to them.
These examples currently target v1.0.0, so do something like this:

    $ git clone https://github.com/bespoke-silicon-group/bsg_f1.git
    $ cd bsg_f1
    $ git checkout 92643b8

On a Mac, I had to make a few changes to make things compile: delete all the contents of `bsg_manycore_features.h`, leaving an empty file, and change every occurrence of `#include <endian.h>` to `#include <machine/endian.h>`.
Then, configure your editor to add `bsg_f1/cl_manycore/libraries` as an include path.

Then, the best way to actually run the examples is with [Chazz][].
Instructions forthcoming.

[hbf1lib]: https://github.com/bespoke-silicon-group/bsg_f1/tree/master/cl_manycore/libraries
[chazz]: https://github.com/cucapra/chazz


The Examples
------------

The examples are arranged in order of increasing complexity:

- `noop`: Just execute a function on the device that does literally nothing at all.
