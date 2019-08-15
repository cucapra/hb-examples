#!/bin/sh

if [ ! -e Makefile ]; then
    cp /home/centos/alexa/ms-bug/{Makefile,hb.mk,bsg-device-communication.c,bsg-host-communication.c} .
fi

# Clean directory
rm -rf *.{ll,o,s,dot,bc}

# Sanity check file 
echo current file is
cat merge-sort.c

# Check valid C program when compiled "normally"
echo compiling with gcc 
gcc merge-sort.c -o merge-sort.o
if [ "$?" -ne 0 ]; then
    echo build error
    exit 1
fi

# Check that the gcc'ed executable terminates
sudo timeout 2 ./merge-sort.o
if [ "$?" -eq 124 ]; then
    # Timed out.
    echo gcc program timed out
    exit 1
fi
echo gcc program built and did not time out

# Run docker image of the SSAC compiler
mkdir ms
cp merge-sort.c ms/merge-sort.c
docker run -v `pwd`/ms:/ssa-compiler/ms ssac-mergesort  > /dev/null
if [ "$?" -ne 0 ]; then
    echo docker error
    exit 1
fi
cp ms/merge-sort_cores.ll .
cp ms/merge-sort_comms.ll .
cp ms/merge-sort_host.ll .
rm -rf ms

echo docker run succeeded

# Check that the generated LLVM builds
make clean
make
if [ "$?" -ne 0 ]; then
    echo LLVM build error
    exit 1
fi
echo LLVM IR build succeeded

sudo timeout 1 ./host  > /dev/null
if [ "$?" -eq 124 ]; then
    # Timed out.
    echo timed out
    sudo fpga-load-local-image -S 0 -F -I $AGFI
    rm -rf *.{ll,o,s,dot}
    make clean
    exit 0
fi

echo did not time out
rm -rf *.{ll,o,s,dot}
make clean
exit 1
