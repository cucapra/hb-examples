HOST_SRCS := ../shared/bsg-host-communication.c
DEVICE_SRCS := ../shared/bsg-device-communication.c

HOST_TARGET := host
DEVICE_TARGET := device.riscv

HOST_LLVM_IR_OBJS := matrix_multiply_host.o
DEVICE_LLVM_IR_OBJS := matrix_multiply_comms.o matrix_multiply_cores.o

# Common Makefile to build host & device code.
include ../hb.mk

.PHONY: run
run: all
	sudo ./$(HOST_TARGET) 
