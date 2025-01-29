python src/train_spectus.py --config-file configs/finetune_exp8_224_148.yaml \
                     --checkpoint ../checkpoints/pretrain_clean/helpful-star-588_exp8_112_112/checkpoint-224000 \
                     --additional-info _exp8_9M_224+148 \
                     --additional-tags log_29_1.28:mf10M:nist:from_pretrained:exp8:148k \
                     --wandb-group finetune_clean
