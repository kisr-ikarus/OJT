#!/bin/bash

#SBATCH --job-name=array_simple
#SBATCH --partition=Res
#SBATCH --array=0-3
#SBATCH --time=00:05:00
#SBATCH --mem=10MB

# List the input Array
input=("KISR" "IKARUS" "HPCDEMO" "STAFF")

function echoMe {
	echo "Hello $1, from IKARUS job $SLURM_JOB_ID"
	sleep 60
	echo "$(date +%T)"
	exit 0
}

echoMe ${input[SLURM_ARRAY_TASK_ID]}
