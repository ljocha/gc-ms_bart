# pretrain RASSP_1 NEIMS_1
python train_bart.py --config-file configs/pretrain_9M.yaml \
                     --additional-info "_9M_448" \
                     --resume-id hvamrn1g \
                     --checkpoint ../checkpoints/pretrain_clean/dark-salad-579_9M_full224/checkpoint-416000 \
                     --additional-tags "custom_rassp:custom_neims:old_rassp:old_neims:from_scratch" \
                     --wandb-group pretrain_clean \
