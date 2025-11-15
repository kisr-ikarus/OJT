#!/bin/bash

#SBATCH --partition Res
#SBATCH --nodes 2
#SBATCH --ntasks 80
#SBATCH --mem 100M
#SBATCH --time 00:05:00
#SBATCH --job-name 1m-80c

echo "Start Time: $(date +%T)"
sleep 1m
echo "End Time: $(date +%T)"

exit 0
