#!/usr/bin/env -S bash -l
#SBATCH --account=<your_account>
#SBATCH --cluster=<your_cluster>
#SBATCH --time=00:02:00

# first clean up your environment, then load R
module purge &> /dev/null
module load R-bundle-CRAN/2024.11-foss-2024a

# define output directory and create it if it does not exist
OUTDIR="output"
mkdir -p $OUTDIR

# define the quantity to analyse
QUANTITY="tempmax"

Rscript ./weather-analysis.R  \
    --city London             \
    --quantity "$QUANTITY"    \
    --output $OUTDIR/$QUANTITY.csv
