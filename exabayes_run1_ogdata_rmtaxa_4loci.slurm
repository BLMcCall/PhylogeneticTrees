#!/bin/bash

#SBATCH --job-name=exabayes_ogdata_rmtaxa_4loci
#SBATCH --partition=comp72
#SBATCH --output=exabayes_ogdata_rmtaxa_4loci_%j.txt
#SBATCH --error=exabayes_ogdata_rmtaxa_4loci_%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=brittany.mccall@smail.astate.edu  
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=32
#SBATCH --time=72:00:00

##-----------------------------------------------------------------------------------------
## Load modules

module load exabayes/1.5.1

cd /local_scratch/$SLURM_JOB_ID/

##------------------------------------------------------------------------------------------
## ExaBayes commands

yggdrasil -f /scrfs/storage/bmccall/ExaBayes/ogdata_rmtaxa.phy -m DNA -n ogdata_rmtaxa4_run1 -s $RANDOM -T 32 

## copy local scratch back to home directory

cp -r /local_scratch/$SLURM_JOB_ID/* /scrfs/storage/bmccall/ExaBayes/run1_ogdata_rmtaxa4