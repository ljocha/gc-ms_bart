python train_bart.py --config-file configs/finetune_9M_long.yaml \
                     --checkpoint ../checkpoints/pretrain_clean/dark-salad-579_9M_full224/checkpoint-448000 \
                     --additional-info _9M_448+296k \
                     --additional-tags log_29_1.28:mf10M:nist:from_pretrained:final:148k \
                     --wandb-group finetune_clean

