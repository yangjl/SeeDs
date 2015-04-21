#!/bin/bash
#SBATCH -D /Users/yangjl/Documents/Github/SeeDs
#SBATCH -o /Users/yangjl/Documents/Github/SeeDs/slurm-log/testout-%j.txt
#SBATCH -e /Users/yangjl/Documents/Github/SeeDs/slurm-log/err-%j.txt
#SBATCH -J hdf5-hmp
set -e
set -u

module load gcc jdk/1.8 tassel/5
run_pipeline.pl -h5 /group/jrigrp4/AllZeaGBSv2.7impV5/ZeaGBSv27_publicSamples_imputedV5_AGPv2-150114.h5 -export /group/jrigrp4/AllZeaGBSv2.7impV5/ZeaGBSv27_publicSamples_imputedV5_AGPv2-150114_ames.hmp -exportType Hapmap -includeTaxaInfile data/Taxa_ames_3324.txt

python /home/jolyang/bin/send_email.py -s slurm-scripts/run_h5_hmp.sh
