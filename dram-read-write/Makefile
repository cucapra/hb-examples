HOST_SRCS := host.c
DEVICE_SRCS := dram-read-write.c

HOST_TARGET := host
DEVICE_TARGET := dram-read-write.riscv

# Common Makefile to build host & device code.
include ../hb.mk

.PHONY: run
run: all
	sudo ./$(HOST_TARGET) 10
