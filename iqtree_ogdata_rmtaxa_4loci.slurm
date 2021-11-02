#!/bin/bash

#SBATCH --job-name=iqtree_ogdata_rmtaxa_4loci
#SBATCH --partition=comp72
#SBATCH --output=iqtree_ogdata_rmtaxa_4loci_%j.txt
#SBATCH --error=iqtree_ogdata_rmtaxa_4loci_%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=brittany.mccall@smail.astate.edu  
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=32
#SBATCH --time=72:00:00

##-----------------------------------------------------------------------------------------
## Load modules

module load java/sunjdk_1.8.0
module load iqtree/1.6.12

cd /local_scratch/$SLURM_JOB_ID/

##-----------------------------------------------------------------------------------------
## IQTREE commands

iqtree -s /scrfs/storage/bmccall/Iqtree/Iqtree_ogdata_rmtaxa_4loci/ogdata_rmtaxa.phy -m GTR+F+R3 -alrt 1000 -bb 1000 -nt AUTO