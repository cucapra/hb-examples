HOST_SRCS := ../shared/bsg-host-communication.c host.c
DEVICE_SRCS := ../shared/bsg-device-communication.c communication.c

HOST_TARGET := host
DEVICE_TARGET := communication.riscv

DEVICE_GCC_OPTS := -DDESTINATION_ID=$(DESTINATION_ID)

# Common Makefile to build host & device code.
include ../hb.mk

.PHONY: run
run: all
	sudo ./$(HOST_TARGET) 
