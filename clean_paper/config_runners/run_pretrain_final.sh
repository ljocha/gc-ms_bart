# pretrain RASSP_1 NEIMS_1 NIST_0.1
python train_bart.py --config-file configs/pretrain_final.yaml \
                     --resume-id j99ipkke \
                     --checkpoint ../checkpoints/pretrain_clean/sandy-star-569_exp7_custom_rassp_neims/checkpoint-112000 \
                     --additional-info "custom_final_224k" \
                     --additional-tags "final:custom_rassp:custom_neims:from_pretrain" \
                     --wandb-group pretrain_clean \


