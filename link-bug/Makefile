HOST_SRCS := host.c
DEVICE_SRCS := device.c

HOST_TARGET := host
DEVICE_TARGET := device.riscv

# Common Makefile to build host & device code.
include hb.mk

.PHONY: run
run: all
	sudo ./$(HOST_TARGET)
