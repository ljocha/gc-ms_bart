# checkpoints/finetune_clean/balmy-violet-577_custom_final/checkpoint-147476
# checkpoints/finetune_clean/hardy-bush-576_exp5_custom_one_src_token/checkpoint-73738

model="../checkpoints/finetune_clean/royal-violet-583_exp2_lin_10000/checkpoint-73738"
CVD=2

echo "Processing model: $model"
CUDA_VISIBLE_DEVICES=$CVD python predict.py --checkpoint $model \
                                         --output-folder predictions \
                                         --config-file configs/predict_nist_valid_greedy_exp2_lin_10000.yaml &

CUDA_VISIBLE_DEVICES=$CVD python predict.py --checkpoint $model \
                                        --output-folder predictions \
                                        --config-file configs/predict_nist_valid_beam10_exp2_lin_10000.yaml &

wait