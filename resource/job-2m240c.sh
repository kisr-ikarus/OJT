#!/bin/bash
  
#SBATCH --partition Res
#SBATCH --nodes 6
#SBATCH --ntasks 240
#SBATCH --mem 100M
#SBATCH --time 00:05:00
#SBATCH --job-name 2m-240c

echo "Start Time: $(date +%T)"
sleep 2m
echo "End Time: $(date +%T)"

exit 0
