HOST_SRCS := host.c
DEVICE_SRCS := sram-read-write.c

HOST_TARGET := host
DEVICE_TARGET := sram-read-write.riscv

# Common Makefile to build host & device code.
include ../hb.mk

.PHONY: run
run: all
	sudo ./$(HOST_TARGET)
