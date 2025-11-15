#!/bin/bash

#SBATCH --partition=Res
#SBATCH --nodes=3 
#SBATCH --mem=10M
#SBATCH --time=01:00

module load mpich 
mpirun -n 4 hostname
module purge

