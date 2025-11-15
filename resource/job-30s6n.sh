#!/bin/bash
  
#SBATCH --partition Res
#SBATCH --nodes 6
#SBATCH --mem 100M
#SBATCH --time 00:01:00
#SBATCH --job-name 30s-6n

echo "Start Time: $(date +%T)"
sleep 30s
echo "End Time: $(date +%T)"

exit 0
