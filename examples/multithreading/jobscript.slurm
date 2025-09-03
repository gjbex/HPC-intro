#!/usr/bin/env -S bash -l
#SBATCH --account=lpt2_sysadmin
#SBATCH --nodes=1  --ntasks=1
#SBATCH --mem=2G
#SBATCH --time=00:10:00

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
echo "running with $OMP_NUM_THREADS threads"
time ./pi.exe 2000000000
