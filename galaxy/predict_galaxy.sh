#!/bin/bash

. /opt/conda/bin/activate BARTpredictCPU
#conda activate BARTpredictCPU

exec python /opt/spectrum/predict.py "$@"
