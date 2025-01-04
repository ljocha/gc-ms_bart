python train_bart.py --config-file configs/finetune_exp8_448_296.yaml \
                     --checkpoint ../checkpoints/pretrain_clean/fresh-universe-588_exp8_448/checkpoint-448000 \
                     --additional-info _exp8_9M_448+296 \
                     --additional-tags log_29_1.28:mf10M:nist:from_pretrained:exp8:296k \
                     --wandb-group finetune_clean

