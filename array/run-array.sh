#!/bin/bash

#SBATCH --job-name=array_run
#SBATCH --partition=Res
#SBATCH --array=1-60
#SBATCH --time=0-00:05:00
#SBATCH --mem-per-cpu=500MB

# Job Directory
SCRATCH_DIRECTORY=/NFS/scratch/homes/${USER}/${SLURM_JOBID}
mkdir -p ${SCRATCH_DIRECTORY}
cd ${SCRATCH_DIRECTORY}
echo "Array Output File" > ${SLURM_SUBMIT_DIR}/all-in-one.out
cp ${SLURM_SUBMIT_DIR}/seq_script.py  ${SCRATCH_DIRECTORY}

# Job Output
echo "Processing Task Id:: " ${SLURM_ARRAY_TASK_ID} > output_${SLURM_ARRAY_TASK_ID}.txt
python3 seq_script.py >> output_${SLURM_ARRAY_TASK_ID}.txt
cp output_${SLURM_ARRAY_TASK_ID}.txt  ${SLURM_SUBMIT_DIR}
cat output_${SLURM_ARRAY_TASK_ID}.txt >> ${SLURM_SUBMIT_DIR}/all-in-one.out 

#Clean Directory
cd ${SLURM_SUBMIT_DIR}
rm -rf ${SCRATCH_DIRECTORY}
rm -rf slurm-*.out
rm -rf *.txt

exit 0
