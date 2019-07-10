HOST_SRCS := ../shared/bsg-host-communication.c host.c
DEVICE_SRCS := ../shared/bsg-device-communication.c communication.c

HOST_TARGET := host
DEVICE_TARGET := communication.riscv

# Common Makefile to build host & device code.
include ../hb.mk

.PHONY: run
run: all
	sudo ./$(HOST_TARGET)
