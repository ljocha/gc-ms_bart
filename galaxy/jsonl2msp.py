#!/usr/bin/env python3

from matchms import Spectrum
from matchms.exporting.save_as_msp import save_as_msp

import json
import numpy as np
import sys

with open(sys.argv[1]) as inf:
  js = [ json.loads(l) for l in inf ]

spec = [
  Spectrum(
    mz=np.array(j['mz'],dtype=np.float32),
    intensities=np.array(j['intensity'],dtype=np.float32),
    metadata={ 'smiles' : j['smiles'] }
  )
  for j in js ]
    
save_as_msp(spec,sys.argv[2],mode='w')
