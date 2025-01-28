CHECKPOINTS=(../checkpoints/finetune_clean/floral-rain-591_exp8_9M_224+148/checkpoint-147476 \
        ../checkpoints/finetune_clean/vibrant-armadillo-584_exp8_224_74/checkpoint-73738)

for checkpoint in "${CHECKPOINTS[@]}"; do
    echo "Processing model: $checkpoint"
    python predict.py --checkpoint $checkpoint \
                      --output-folder predictions \
                      --config-file configs/predict_nist_valid_greedy.yaml &

        python predict.py --checkpoint $checkpoint \
                      --output-folder predictions \
                      --config-file configs/predict_nist_valid_beam10.yaml &
done

# Optional: Wait for all background processes to finish
wait