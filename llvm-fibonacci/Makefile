HOST_SRCS := ../opt-shared/bsg-host-communication.c
DEVICE_SRCS := ../opt-shared/bsg-device-communication.c

HOST_TARGET := host
DEVICE_TARGET := device.riscv

HOST_LLVM_IR_OBJS := fibonacci-loop_host.o
DEVICE_LLVM_IR_OBJS := fibonacci-loop_comms.o fibonacci-loop_cores.o

# Common Makefile to build host & device code.
include ../hb.mk

.PHONY: run
run: all
	sudo ./$(HOST_TARGET) 10
