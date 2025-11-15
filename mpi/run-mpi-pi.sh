#!/bin/bash

#SBATCH --job-name=mpi-example
#SBATCH --partition=Res
#SBATCH --ntasks=20
#SBATCH --time=0-00:05:00
#SBATCH --mem-per-cpu=500MB

module load openmpi/4.1.5

cd ${SLURM_SUBMIT_DIR}

# first set of parallel runs
mpirun -n 4 python3 pi-digits.py 10 & 
mpirun -n 4 python3 pi-digits.py 15 &
mpirun -n 4 python3 pi-digits.py 20 &
mpirun -n 4 python3 pi-digits.py 25 &
mpirun -n 4 python3 pi-digits.py 1000 &

#Wait and continue once all commands started with & have completed
wait

mpirun -n 20 python3 sum-pi-digits.py

exit 0
