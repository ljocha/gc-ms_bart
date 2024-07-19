#!/bin/bash

. /opt/conda/bin/activate 
conda activate BARTpredictCPU

exec python "$@"
