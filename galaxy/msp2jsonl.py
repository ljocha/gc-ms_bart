#!/usr/bin/env python3

from matchms import Spectrum
from matchms.importing import load_from_msp

import json
import numpy as np
import sys

spec = load_from_msp(sys.argv[1])

with open(sys.argv[2],'w') as outf:
  for s in spec:
    outf.write(
      json.dumps({
        'mz' : list(s.mz),
        'intensity': list(s.intensities),
        'smiles': s.metadata['smiles']
      }) + '\n'
    )
