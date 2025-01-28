# pretrain RASSP_1 NEIMS_1
python train_bart.py --config-file configs/pretrain_exp8_448.yaml \
                     --additional-info "_exp8_448" \
                     --additional-tags "custom_rassp:custom_neims:custom_old_rassp:custom_old_neims:from_scratch" \
                     --wandb-group pretrain_clean \
