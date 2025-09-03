# Multithreading

Some applications can run multiple threads to leverage the processing power
of more than one CPU core.  Running such an application in a Slurm job
requires some extra resource specifications.


## What is it?

1. `pi.c`: a simple C program that calculates the value of pi using multiple threads.
1. `Makefile`: a simple make fil to build the application.
1. `jobscript.slurm`: a Slurm job script to run the application.


## How to use it?

First, build the application:
```
$ make
```

Then, submit the job script to Slurm:
```
$ sbatch --cpus-per-task=4 jobscript.slurm
```

The value of `--cpus-per-task` should match the number of threads you want
to run the application with.  Note that this number should be at most equal
to the number of CPU cores available on the node you are running on.  Check
the documentation of your cluster to find out how many CPU cores are
available per node.
