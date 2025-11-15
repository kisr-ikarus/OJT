#!/bin/bash

#SBATCH --partition=Res
#SBATCH --nodes=6 
#SBATCH --mem=10M
#SBATCH --time=01:00

# Load MPI module
module load mpich 

# Simple Command Line 
mpirun -n 4 hostname
mpirun -n 6 bash -c 'echo $(date +"%T.%3N")'

# Clean module list
module purge

