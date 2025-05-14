#!/usr/bin/env -S bash -l
#SBATCH --account=<your_account>
#SBATCH --cluster=<your_cluster>
#SBATCH --time=00:02:00

# first clean up your environment, then load R
module purge &> /dev/null
module load R/4.4.0-gfbf-2023a

# define output directory and create it if it does not exist
OUTDIR="output"
mkdir -p $OUTDIR

# define the quantity to analyse
QUANTITY="tempmax"

Rscript ./weather-analysis.R  \
    --input data/London.csv   \
    --quantity "$QUANTITY"    \
    --output $OUTDIR/$QUANTITY.csv
