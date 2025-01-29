#!/bin/bash
#PBS -q gpu_dgx@pbs-m1.metacentrum.cz
#PBS -l walltime=20:0:0
#PBS -l select=1:ncpus=6:ngpus=1:mem=20gb
#PBS -N predict_nist

cd /storage/brno2/home/ahajek/Spektro/MassGenie/clean_paper
source /storage/brno2/home/ahajek/miniconda3/bin/activate trainSpectus
echo $CONDA_PREFIX
./config_runners/run_predict_many_exp8.sh

exit