CUDA_VISIBLE_DEVICES=2 python ../predict.py --checkpoint ../checkpoints/finetune_clean/balmy-violet-577_exp8_224_148/checkpoint-147476 \
                                          --output-folder predictions \
                                          --config-file configs/predict_swgdrug_beam50.yaml \
