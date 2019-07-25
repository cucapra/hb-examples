#!/bin/sh

if [ ! -e Makefile ]; then
    cp /home/centos/adrian/link-bug/{Makefile,hb.mk,host.c,device.c} .
fi

# "Problem-free" run.
rm -f device.riscv device.o
make
if [ "$?" -ne 0 ]; then
    echo build error
    exit 1
fi
echo executing ok
ok=`sudo timeout 2 ./host`
if [ "$?" -eq 124 ]; then
    # Timed out.
    echo timed out
    sudo fpga-load-local-image -S 0 -F -I $AGFI
    exit 1
fi

# "Problem" run.
rm -f device.riscv device.o
make EXTRA=-DPROBLEM
if [ "$?" -ne 0 ]; then
    echo build error
    exit 1
fi
echo executing problem
problem=`sudo timeout 2 ./host`
if [ "$?" -eq 124 ]; then
    # Timed out.
    echo timed out
    sudo fpga-load-local-image -S 0 -F -I $AGFI
    exit 1
fi

echo ok: $ok
echo problem: $problem

# Compare output.
if [ "$ok" = "$problem" ]; then
    echo ouput matches
    exit 1
fi

echo output mismatch!!
