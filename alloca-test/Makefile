HOST_SRCS := ../shared/bsg-host-communication.c
DEVICE_SRCS := ../shared/bsg-device-communication.c

HOST_TARGET := host
DEVICE_TARGET := device.riscv

HOST_LLVM_IR_OBJS := alloca_host.o
DEVICE_LLVM_IR_OBJS := alloca_comms.o alloca_cores.o

# Common Makefile to build host & device code.
include ../hb.mk

.PHONY: run
run: all
	sudo ./$(HOST_TARGET) 