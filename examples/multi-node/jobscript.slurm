#!/usr/bin/env -S bash -l
#SBATCH --account=<your-account>
#SBATCH --cluster=<your-cluster>
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=1G
#SBATCH --time=00:10:00

# load modules
module purge &> /dev/null
module load OpenMPI

# set runtime parameters
NR_POINTS=$(( 2**34 ))
VERBOSE=1

echo "running with $SLURM_NTASKS threads"
time mpirun ./pi.exe $NR_POINTS $VERBOSE
