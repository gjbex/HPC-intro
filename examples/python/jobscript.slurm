#!/usr/bin/env -S bash -l
#SBATCH --acount=<your_account>
#SBATCH --cluster=<your_cluster>
#SBATCH --time=00:05:00

conda activate hpc_intro

python compute.py -n 100 -o result_${SLURM_JOB_ID}.txt -p plot_${SLURM_JOB_ID}.png
