#!/usr/bin/env python3

import json
import sys

with open(sys.argv[1]) as inf:
  js = [ json.loads(l) for l in inf ]

with open(sys.argv[2],'w') as outf:
  outf.write('\n'.join(
    [ '\t'.join([f'{k}\t{v}' for k,v in j.items()]) for j in js ]
  ))
  outf.write('\n')

