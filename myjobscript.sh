#!/bin/bash

#SBATCH --partition=Res
#SBATCH --mem=100M
#SBATCH --nodes=6

srun hostname | sort
echo "Happy Computing"

exit 0
