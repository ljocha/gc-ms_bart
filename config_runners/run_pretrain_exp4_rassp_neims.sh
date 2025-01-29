# RASSP pretrain from scratch
python src/train_bart.py --config-file configs/pretrain_exp4_rassp_neims.yaml \
                        --additional-info "_exp4_rassp_neims" \
                        --additional-tags "exp4:rassp:neims:from_scratch" \
                        --wandb-group pretrain_clean \