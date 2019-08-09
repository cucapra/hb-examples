# This is a Makefile snippet that is shared among the examples.
# Before including it, be sure to set HOST_SRCS and DEVICE_SRCS.
# You may also want to set HOST_TARGET and DEVICE_TARGET to the filenames for
# the output executables.
HOST_TARGET ?= host
DEVICE_TARGET ?= device.riscv

# Main targets.

.PHONY: all clean

all: $(DEVICE_TARGET) $(HOST_TARGET)

clean:
	rm -rf $(HOST_OBJS) $(DEVICE_OBJS_ALL) $(HOST_TARGET) $(DEVICE_TARGET) \
	 $(HOST_LLVM_IR_OBJS) $(DEVICE_LLVM_IR_OBJS) $(HOST_LLVM_IR_AS) \
	 $(DEVICE_LLVM_IR_AS)

reload:
	sudo fpga-load-local-image -S 0 -F -I $(AGFI)

# Build host code with the "normal" compiler.

HOST_OBJS := $(HOST_SRCS:.c=.o)
HOST_CFLAGS := -std=c11 -lbsg_manycore_runtime
HOST_CC := cc
HOST_CLANG := /home/centos/bsg_bladerunner/llvm/llvm-install/llvm-install/bin/clang

$(HOST_TARGET): $(HOST_OBJS) $(HOST_LLVM_IR_OBJS)
	$(HOST_CC) $(HOST_CFLAGS) $^ -o $@

$(HOST_OBJS): %.o: %.c
	$(HOST_CC) $(HOST_CFLAGS) -c $< -o $@

# Build the host LLVM files 

CLANG := 1

override LLVM_DIR = /home/centos/bsg_bladerunner/llvm/llvm-install/llvm-install

HOST_LLVM_IR_AS := $(HOST_LLVM_IR_OBJS:.o=.s)
HOST_LLVM_IR_SRC := $(HOST_LLVM_IR_OBJS:.o=.ll)

$(HOST_LLVM_IR_AS): %.s: %.ll
	$(HOST_CLANG) --target=x86_64-redhat-linux-gnu $(spmd_defs) -fno-addrsig $< -S -o $@

$(HOST_LLVM_IR_OBJS): %.o: %.s
	$(HOST_CC) $(HOST_CFLAGS) -c $< -o $@

# Include bsg_manycore Make infrastructure.

# The dimensions of the tiles we'll run on.
bsg_tiles_X := 4
bsg_tiles_Y := 4

# Doesn't seem to do anything, but needs to be defined.
bsg_group_size := 1

BSG_MANYCORE_DIR := $(wildcard /home/centos/bsg_bladerunner/bsg_manycore_*)
BSG_F1_DIR := $(wildcard /home/centos/bsg_bladerunner/bsg_f1_*)
include $(BSG_F1_DIR)/cl_manycore/Makefile.machine.include
include $(BSG_MANYCORE_DIR)/software/mk/Makefile.dimensions
include $(BSG_MANYCORE_DIR)/software/mk/Makefile.paths
include $(BSG_MANYCORE_DIR)/software/mk/Makefile.builddefs

# Build device binary.

DEVICE_OBJS := $(DEVICE_SRCS:.c=.o)
DEVICE_OBJS_ALL := $(DEVICE_OBJS) $(BSG_MANYCORE_LIB_OBJS)
CRT_O := $(BSG_MANYCORE_DIR)/software/spmd/common/crt.o

$(DEVICE_TARGET): $(DEVICE_OBJS_ALL) $(DEVICE_LLVM_IR_OBJS) $(CRT_O)
	$(RISCV_LINK) $(DEVICE_OBJS_ALL) $(DEVICE_LLVM_IR_OBJS) \
		-o $@ $(RISCV_LINK_OPTS)

$(DEVICE_OBJS_ALL): %.o: %.c
	$(RISCV_GCC) $(RISCV_GCC_OPTS) $(DEVICE_GCC_OPTS) $(OPT_LEVEL) $(spmd_defs) -c $< -o $@

# Build the device LLVM files

DEVICE_LLVM_IR_AS := $(DEVICE_LLVM_IR_OBJS:.o=.s)
DEVICE_LLVM_IR_SRC := $(DEVICE_LLVM_IR_OBJS:.o=.ll)


$(DEVICE_LLVM_IR_AS): %.s: %.ll
	$(LLVM_CLANG) $(RISCV_GCC_OPTS) $(spmd_defs) -fno-addrsig $(INCS) $^ -S -o $@

$(DEVICE_LLVM_IR_OBJS): %.o: %.s
	$(RISCV_GCC) $(RISCV_GCC_OPTS) $(spmd_defs) -c $^ -o $@
