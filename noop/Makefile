HOST_SRCS := host.c
DEVICE_SRCS := noop.c

HOST_TARGET := host
DEVICE_TARGET := noop.riscv

# Common Makefile to build host & device code.
include ../hb.mk

.PHONY: run
run: all
	sudo fpga-load-local-image -S 0 -F -I $(AGFI)
	sudo ./$(HOST_TARGET)
