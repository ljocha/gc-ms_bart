python src/train_bart.py --config-file configs/finetune_exp3_mf10M.yaml \
                        --checkpoint ../checkpoints/pretrain_clean/unearthly-imp-575_exp5_custom_one_src_token/checkpoint-112000 \
                        --additional-info "_exp5_custom_one_src_token" \
                        --wandb-group finetune_clean  \
                        --additional-tags "exp5:nist:from_pretrained" \
