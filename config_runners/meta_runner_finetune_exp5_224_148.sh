#!/bin/bash
#PBS -q gpu_dgx@pbs-m1.metacentrum.cz
#PBS -l walltime=50:0:0
#PBS -l select=1:ncpus=7:ngpus=1:mem=50gb
#PBS -N run_finetune_exp5_224_148

cd /storage/brno2/home/ahajek/Spektro/MassGenie/clean_paper
source /storage/brno2/home/ahajek/miniconda3/bin/activate trainSpectus
echo $CONDA_PREFIX
./config_runners/run_finetune_exp5_224_148.sh

exit
