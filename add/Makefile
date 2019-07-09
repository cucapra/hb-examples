HOST_SRCS := host.c
DEVICE_SRCS := add.c

HOST_TARGET := host
DEVICE_TARGET := add.riscv

# Common Makefile to build host & device code.
include ../hb.mk

.PHONY: run
run: all
	sudo ./$(HOST_TARGET) 32 10
