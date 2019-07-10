HOST_SRCS := host.c
DEVICE_SRCS := report.c

HOST_TARGET := host
DEVICE_TARGET := report.riscv

# Common Makefile to build host & device code.
include ../hb.mk

.PHONY: run
run: all
	sudo ./$(HOST_TARGET)
