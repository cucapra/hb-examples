HOST_SRCS := ../shared/bsg-host-communication.c host.c
DEVICE_SRCS := ../shared/bsg-device-communication.c fib.c

HOST_TARGET := host
DEVICE_TARGET := fib.riscv

CLANG := 1

override LLVM_DIR = /home/centos/bsg_bladerunner/llvm/llvm-install/llvm-install

# Build the LLVM IR 
%.s: %.ll 
	$(LLVM_CLANG) $(RISCV_GCC_OPTS) $(spmd_defs) -fno-addrsig $(INCS) $< -S -o $@

%.o: %.s
	$(RISCV_GCC) $(RISCV_GCC_OPTS) $(spmd_defs) -c $< -o $@

DEVICE_NON_C_OBJS := fibonacci-loop_cores.o

# Common Makefile to build host & device code.
include ../hb.mk

.PHONY: run
run: all
	sudo ./$(HOST_TARGET)
