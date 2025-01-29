CUDA_VISIBLE_DEVICES=2  python train_bart.py --config-file configs/finetune_exp2_lin_10000.yaml \
                                            --additional-info _exp2_lin_10000 \
                                            --additional-tags exp2:lin_10000:from_scratch \
                                            --wandb-group finetune_clean