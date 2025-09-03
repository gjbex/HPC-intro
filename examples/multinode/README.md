# Multi-node

HPC applications may be able to run on multiple nodes. This example shows how to run such a job
using the Slurm job scheduler.


## What is it?

1. `pi.c`: distributed computation of pi using a quadrature method, and MPI.
1. `Makefile`: make file to build the executable.
1. `jobscript.slurm`: Slurm job script to run the application on multiple nodes.


## How to use it?

Build the application:
```bash
$ module load OpenMPI
$ make
```

Submit the job to Slurm to run with 4 processes:
```bash
$ sbatch  --ntasks=4 jobscript.slurm
```

To make sure that processes are running on different nodes, you can use:
```bash
$ srun --ntasks=4 --nodes=2 --ntasks-per-node=2 jobscript.slurm
```
