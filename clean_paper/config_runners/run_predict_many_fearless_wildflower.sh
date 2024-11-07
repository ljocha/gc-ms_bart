# ../checkpoints/finetune/fearless-wildflower-490_rassp1_neims1_224kPretrain_148k/checkpoint-147476
CVD=2

model="../checkpoints/finetune/fearless-wildflower-490_rassp1_neims1_224kPretrain_148k"
config="configs/predict_nist_valid_beam10_40bin.yaml"
echo "Processing model #1: $model"
CUDA_VISIBLE_DEVICES=$CVD python predict.py --checkpoint "$model/checkpoint-147476" \
                                            --output-folder predictions \
                                            --config-file $config &

config="configs/predict_nist_valid_greedy_40bin.yaml"
CUDA_VISIBLE_DEVICES=$CVD python predict.py --checkpoint "$model/checkpoint-147476" \
                                            --output-folder predictions \
                                            --config-file $config &