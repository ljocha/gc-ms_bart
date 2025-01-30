CUDA_VISIBLE_DEVICES=2 python src/predict.py --checkpoint ../checkpoints/finetune_clean/balmy-violet-577_exp5_224_148/checkpoint-147476 \
                                          --output-folder predictions \
                                          --config-file configs/predict_cayman_greedy.yaml \
