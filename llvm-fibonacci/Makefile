HOST_SRCS := ../shared/bsg-host-communication.c host.c
DEVICE_SRCS := ../shared/bsg-device-communication.c fib.c

HOST_TARGET := host
DEVICE_TARGET := fib.riscv

CLANG := 1

# Common Makefile to build host & device code.
# Main targets.

.PHONY: all clean

.PRECIOUS: fibonacci-loop_cores.s

all: $(DEVICE_TARGET) $(HOST_TARGET)

clean:
	rm -rf $(HOST_OBJS) $(DEVICE_OBJS_ALL) $(HOST_TARGET) $(DEVICE_TARGET)


# Build host code with the "normal" compiler.

HOST_OBJS := $(HOST_SRCS:.c=.o)
HOST_CFLAGS := -std=c11 -lbsg_manycore_runtime
HOST_CC := cc

$(HOST_TARGET): $(HOST_OBJS)
	$(HOST_CC) $(HOST_CFLAGS) $^ -o $@

$(HOST_OBJS): %.o: %.c
	$(HOST_CC) $(HOST_CFLAGS) -c $< -o $@


# Include bsg_manycore Make infrastructure.

bsg_tiles_X := 2
bsg_tiles_Y := 2

BSG_MANYCORE_DIR := $(wildcard /home/centos/bsg_bladerunner/bsg_manycore_*)
include $(BSG_MANYCORE_DIR)/software/mk/Makefile.dimensions
include $(BSG_MANYCORE_DIR)/software/mk/Makefile.paths
include $(BSG_MANYCORE_DIR)/software/mk/Makefile.builddefs

LLVM_DIR := /home/centos/bsg_bladerunner/llvm/llvm-install/llvm-install
# Build device binary.

DEVICE_OBJS := $(DEVICE_SRCS:.c=.o)
DEVICE_OBJS_ALL := $(DEVICE_OBJS) $(BSG_MANYCORE_LIB_OBJS)

# Build the LLVM IR 
# Emit -O0 so that loads to consecutive memory locations aren't combined
%.s: %.ll 
	$(LLVM_CLANG) $(RISCV_GCC_OPTS) $(spmd_defs) -fno-addrsig $(INCS) $< -S -o $@

%.ll: %.c 
	$(LLVM_CLANG) $(RISCV_GCC_OPTS) $(spmd_defs) -fno-addrsig $(INCS) $< -S -emit-llvm -o $@

%.o:  %.s
	$(RISCV_GCC) $(RISCV_GCC_OPTS) $(spmd_defs) -c $< -o $@

$(DEVICE_TARGET): $(DEVICE_OBJS_ALL) fibonacci-loop_cores.o
	$(RISCV_LINK) $(RISCV_LINK_OPTS) $^ -o $@

$(DEVICE_OBJS_ALL): %.o: %.c
	$(RISCV_GCC) $(RISCV_GCC_OPTS) $(OPT_LEVEL) $(spmd_defs) -c $< -o $@

.PHONY: run
run: all
	sudo fpga-load-local-image -S 0 -F -I $(AGFI)
	sudo ./$(HOST_TARGET)
