#!/bin/bash

#SBATCH --partition=Res
#SBATCH --nodes=6 
#SBATCH --mem=10M
#SBATCH --time=01:00

# Load MPI module
module load mpich 

# Using C++ Script
mpicxx -o my_script script.c
mpirun -np 4 ./my_script

# Clean module list
module purge

