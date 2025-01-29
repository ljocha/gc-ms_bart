# checkpoints/finetune_clean/dulcet-cloud-568_exp7_custom_neims
# checkpoints/finetune_clean/hearty-leaf-572_exp7_custom_rassp
# checkpoints/finetune_clean/likely-sea-573_exp7_custom_rassp_neims
# checkpoints/finetune_clean/valiant-galaxy-574_exp7_custom_rassp_neims_nist

MODELS=(../checkpoints/finetune_clean/dulcet-cloud-568_exp7_custom_neims \
        ../checkpoints/finetune_clean/hearty-leaf-572_exp7_custom_rassp \
        ../checkpoints/finetune_clean/likely-sea-573_exp7_custom_rassp_neims \
        ../checkpoints/finetune_clean/valiant-galaxy-574_exp7_custom_rassp_neims_nist)

# Correct for loop with proper array reference
for model in "${MODELS[@]}"; do
    echo "Processing model: $model"
    CUDA_VISIBLE_DEVICES=2 python predict.py --checkpoint "$model/checkpoint-73738" \
                                             --output-folder predictions \
                                             --config-file configs/predict_nist_valid_greedy.yaml &
done

# Optional: Wait for all background processes to finish
wait