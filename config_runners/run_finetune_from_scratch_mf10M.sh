python ../train_bart.py --config-file ../configs/train_config_finetune_mf10000000.yaml \
                                               --additional-info _from_scratch_mf10000000 \
                                               --wandb-group finetune \
                                               --additional-tags "H100:meta:mf10M"