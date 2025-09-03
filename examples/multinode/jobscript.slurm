#!/usr/bin/env -S bash -l
#SBATCH --account=<your-account>
#SBATCH --cluster=<your-cluster>
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=1G
#SBATCH --time=00:10:00

echo "running with $SLURM_NTASKS threads"
NR_POINTS=$(( 2**34 ))
VERBOSE=1
time mpirun ./pi.exe $NR_POINTS $VERBOSE
