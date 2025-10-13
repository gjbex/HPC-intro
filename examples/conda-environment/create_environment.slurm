#!/usr/bin/env -S bash -l
#SBATCH --account=<your-account>
#SBATCH --cluster=<your-cluster>
#SBATCH --time=00:30:00
#SBATCH --mem=5G

conda env create -f environment.yml
