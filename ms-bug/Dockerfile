FROM ssac

# Set the working directory 
WORKDIR /ssa-compiler

# Opam env
RUN eval $(opam env)

RUN rm -rf ms/*.{ll,bc,out}

# Use bash instead of sh
SHELL ["/bin/bash", "-c"]

# Run compilation when the container launches
ENTRYPOINT ["make", "ms/merge-sort_cores.ll", "TARGET=bsg_manycore", "TIMEOUT=1"]
