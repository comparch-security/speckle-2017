SPEC2017 Port
=============================

   This branch is a WIP and changes Speckle's usage model. It removes run support,
   and makes the copy mode the default.

   Key changes:
   - Host and Target configurations are provided.
   - A target SPEC2017 build is done to generate target binaries
   - A host SPEC2017 runsetup is done to complete generate a working directories
     for each benchmark.
   - The host directory is copyied to the overlay directory, host binaries are replaced
     with target binaries
   - A run script(run.sh) is generated that executes all the inputs for the benchmark
   
   
## Buld for Spike run

~~~

# make sure you have the linux-gnu cross-compiler installed
# and $RISCV properly defined.
. riscv_env

# set the SPEC CPU 2017 path
export SPEC_DIR=/path/to/SPEC_CPU_2017

# generate the intrate benchmarks
./gen_binaries.sh --compile --suite intrate --input ref

# generate the fprate benchmarks
./gen_binaries.sh --compile --suite fprate --input ref

# if sucessful, all files are located in
ls -l build/overlay/intrate
ls -l build/overlay/fprate

~~~

