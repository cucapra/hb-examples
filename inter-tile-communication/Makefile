HOST_SRCS := host.c
DEVICE_SRCS := communication.c

HOST_TARGET := host
DEVICE_TARGET := communication.riscv

# Common Makefile to build host & device code.
include ../hb.mk

.PHONY: run
run: all
	sudo fpga-load-local-image -S 0 -F -I $(AGFI)
	sudo ./$(HOST_TARGET) 10
