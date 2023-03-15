#!/usr/bin/env python3

# cut-and-paste z notebooku rassp-test.ipynb pro samostatny beh

threads=8
import os
os.environ['OMP_NUM_THREADS']=str(threads)
import torch
import time

valid_atoms = {1, 5, 6, 7, 8, 9, 14, 15, 16, 17, 35, 53}
import yaml
with open('rassp-public/rassp/expconfig/demo.yaml') as cf:
    exp_config = yaml.load(cf,Loader=yaml.FullLoader)

exp_config['cluster_config']['data_dir'] = '.'
exp_config['DATALOADER_NUM_WORKERS'] = 8

# poor man workaround, the model fails to run more epochs but restarting from checkpoint is fine
#exp_config['max_epochs'] = 200
exp_config['max_epochs'] = 1
exp_config['seed'] = int(time.time())
exp_config['checkpoint_every_n_epochs'] = 1
exp_config['attempt_load_recent_checkpoint'] = True
exp_config['validate_every'] = 1

exp_config['epoch_size'] = 4096
exp_config['test_epoch_size'] = 4096
#exp_config['test_epoch_size'] = 44
#exp_config['train_epoch_size'] = 420
exp_config['batch_size'] = 4
exp_config['automatic_mixed_precision'] = False # broken
exp_config['featurize_config']['explicit_formulae_config']['max_formulae'] = 100000 # XXX
exp_config['featurize_config']['explicit_formulae_config']['num_peaks_per_formula'] = 12 # 24 # XXX: maybe too many 
exp_config['featurize_config']['element_oh']=list(valid_atoms)
exp_config['featurize_config']['explicit_formulae_config']['formula_possible_atomicno'] = list(valid_atoms)

exp_config['net_params']['spect_out_config']['formula_oh_sizes'] = [50, 46, 30, 30, 30, 30, 30, 30, 20, 20, 16, 8] # XXX: guess

exp_config['exp_data']['data'][0]['db_filename'] = 'train.pq'
exp_config['exp_data']['data'][1]['db_filename'] = 'test.pq'

with open('exp.yml','w') as y:
    yaml.dump(exp_config,y)

import os
os.environ["PYTORCH_CUDA_ALLOC_CONF"] = "max_split_size_mb:512"

import sys
sys.path.append('./rassp-public/rassp')
from forward_train import train

train('test',exp_config,exp_config_filename='exp.yml',USE_CUDA=True)
