CUDA_VISIBLE_DEVICES=2 python train_bart.py --config-file configs/finetune_exp3_mf10M.yaml \
                                            --checkpoint ../checkpoints/pretrain_clean/sandy-star-569_exp7_custom_rassp_neims/checkpoint-224000 \
                                            --additional-info "_exp8_224_74" \
                                            --wandb-group finetune_clean  \
                                            --additional-tags "exp8:rassp:neims:from_pretrained:224_74" \
