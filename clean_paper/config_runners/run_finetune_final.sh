python train_bart.py --config-file configs/finetune_final.yaml \
                     --checkpoint ../checkpoints/pretrain_clean/sandy-star-569_exp7_custom_rassp_neims/checkpoint-224000 \
                     --additional-info _custom_final \
                     --additional-tags log_29_1.28:mf10M:nist:from_pretrained:final:148k \
                     --wandb-group finetune_clean

