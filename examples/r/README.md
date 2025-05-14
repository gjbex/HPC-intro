# Weather analysis

This example illustrates reading data from a file, writing data to a file, and
running an R script as a batch job on an HPC cluster that uses the Slurm
scheduler.


## What is it?

1. `weather-analysis.R`: a trivial R script that reads weather data from a
   file, and writes a summary to another file.
1. `jobscript.slurm`: a job script that runs the R script `weather-analysis.R`
   with command line arguments for input, output and quantity.
1. `data/London.csv`: sample input data file.
