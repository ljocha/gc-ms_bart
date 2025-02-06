#!/bin/bash

. /opt/conda/etc/profile.d/conda.sh
conda activate SpecTUS_predict
python3 /opt/spectus/demo/api/server.py
