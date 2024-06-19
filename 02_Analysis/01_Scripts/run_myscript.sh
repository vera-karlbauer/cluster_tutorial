#! /usr/bin/bash
#SBATCH --job-name=myjob    # Name of the job showing up in the queue
#SBATCH -w psycl02	# Specify node (optional), this runs the job on psycl02
#SBATCH --ntasks=1         # Nr of CPUs to run job on, e.g. 1 CPU
#SBATCH --mem=10g        # Job memory request, e.g. 10g 
#SBATCH --time=1:00:00    # Time limit hrs:min:sec, this lets it run for 1h
#SBATCH --output=myjob%j.log   # Standard output and error log
pwd; hostname; date

module load R/4.1.2		# load R module with most recent R version
Rscript 02_Analysis/01_Scripts/myscript.R		# run R script
