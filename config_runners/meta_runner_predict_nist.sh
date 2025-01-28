#!/bin/bash
#PBS -q gpu_dgx@pbs-m1.metacentrum.cz
#PBS -l walltime=50:0:0
#PBS -l select=1:ncpus=32:ngpus=1:mem=90gb
#PBS -N predict_nist

cd /storage/brno2/home/ahajek/Spektro/MassGenie/clean_paper
source /storage/brno2/home/ahajek/miniconda3/bin/activate BARTtrainH100
echo $CONDA_PREFIX
./config_runners/run_predict_all_nist_pbs.sh

exit