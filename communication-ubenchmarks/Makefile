HOST_SRCS := ../shared/bsg-host-communication.c

# Use a local copy to instrument the destination tile location
DEVICE_SRCS := bsg-device-communication.c

HOST_TARGET := host
DEVICE_TARGET := device.riscv

HOST_LLVM_IR_OBJS := comms_host.o
DEVICE_LLVM_IR_OBJS := comms_comms.o comms_cores.o

REPS := 100000
DESTINATION_ID := 2

DEVICE_GCC_OPTS := -DDESTINATION_ID=$(DESTINATION_ID) 

# Common Makefile to build host & device code.
include ../hb.mk

.PHONY: run
run: all
	sudo ./$(HOST_TARGET) $(REPS) $(DESTINATION_ID) 
