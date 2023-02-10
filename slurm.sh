#!/bin/bash
#SBATCH --job-name=bwa # Job name
#SBATCH --mail-type=END,FAIL         # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --mail-user=robert.estes@ufl.edu    # Where to send mail
#SBATCH --nodes=1                    # Run all processes on a single node
#SBATCH --ntasks=16                   # Number of processes
#SBATCH --mem=8gb                    # Total memory limit
#SBATCH --time=4:00:00              # Time limit hrs:min:sec
#SBATCH --output=bwa-index_%j.log        # Standard output and error log

module load bwa               # Load the bwa software
bwa index Zm-B73-REFERENCE-NAM-5.0.fa


