#!/bin/sh

if [ ! -e Makefile ]; then
    cp /home/centos/alexa/ms-bug/{Makefile,merge-sort.c,hb.mk,bsg-device-communication.c,bsg-host-communication.c} .
fi

# Clean directory
rm -rf *.{ll,o,s,dot,bc}

# Run docker image of the SSAC compiler
docker run -v `pwd`:/ssa-compiler/ms ssac-mergesort

# "Problem-free" run.
make clean
make
if [ "$?" -ne 0 ]; then
    echo build error
    exit 1
fi
echo build ok

run=`sudo timeout 5 ./host`
if [ "$?" -eq 124 ]; then
    # Timed out.
    echo timed out
    sudo fpga-load-local-image -S 0 -F -I $AGFI
    rm -rf *.{ll,o,s,dot}
    exit 0
fi

exit 1
