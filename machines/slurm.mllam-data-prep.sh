#!/bin/bash -l
#SBATCH --job-name=EA-mllam-data-prep
#SBATCH --time=1:00:00
#SBATCH --ntasks=1
#SBATCH --gpus=1
#SBATCH --partition=prodq
#SBATCH --account=cu_0003
#SBATCH --output=/dcai/projects01/cu_0003/user_space/ea/logs/mllam-data-prep/%x_%j.log
#SBATCH --error=/dcai/projects01/cu_0003/user_space/ea/logs/mllam-data-prep/%x_%j.log

echo "Started slurm job $SLURM_JOB_ID"

source machines/environment.sh

srun -ul python -m mllam_data_prep "$@"
