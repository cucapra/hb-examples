HOST_SRCS := bsg-host-communication.c
DEVICE_SRCS := bsg-device-communication.c

HOST_TARGET := host
DEVICE_TARGET := device.riscv

HOST_LLVM_IR_OBJS := merge-sort_host.o
DEVICE_LLVM_IR_OBJS := merge-sort_comms.o merge-sort_cores.o

# Common Makefile to build host & device code.
include hb.mk

.PHONY: run
run: all
	sudo ./$(HOST_TARGET) 