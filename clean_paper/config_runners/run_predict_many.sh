# checkpoints/finetune_clean/balmy-violet-577_custom_final/checkpoint-147476
# checkpoints/finetune_clean/hardy-bush-576_exp5_custom_one_src_token/checkpoint-73738

model1="../checkpoints/finetune_clean/balmy-violet-577_custom_final/checkpoint-147476"
model2="../checkpoints/finetune_clean/hardy-bush-576_exp5_custom_one_src_token/checkpoint-73738"

MODELS=($model1 $model2)

# gpu1
# Correct for loop with proper array reference
for checkpoint in "${MODELS[@]}"; do
    echo "Processing model: $checkpoint"
    CUDA_VISIBLE_DEVICES=1 python predict.py --checkpoint $checkpoint \
                                             --output-folder predictions \
                                             --config-file configs/predict_nist_valid_beam10.yaml &
done

# gpu2
for checkpoint in "${MODELS[@]}"; do
    echo "Processing model: $checkpoint"
    CUDA_VISIBLE_DEVICES=2 python predict.py --checkpoint $checkpoint \
                                             --output-folder predictions \
                                             --config-file configs/predict_nist_valid_greedy.yaml &
done

echo "Processing model: $model1"
CUDA_VISIBLE_DEVICES=2 python predict.py --checkpoint $model1 \
                                         --output-folder predictions \
                                         --config-file configs/predict_nist_test_greedy.yaml &

CUDA_VISIBLE_DEVICES=2 python predict.py --checkpoint $model1 \
                                        --output-folder predictions \
                                        --config-file configs/predict_nist_test_beam10.yaml &

# Optional: Wait for all background processes to finish
wait