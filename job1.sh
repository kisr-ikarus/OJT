#!/bin/bash

#SBATCH --job-name=job1
#SBATCH --partition=Res
#SBATCH --nodes=6
#SBATCH --time=00:05:00
#SBATCH --mem=32G

echo "Print this line"

exit 0
