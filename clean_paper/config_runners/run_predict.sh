CUDA_VISIBLE_DEVICES=2 python ../predict.py --checkpoint ../checkpoints/finetune_clean/balmy-violet-577_custom_final/checkpoint-147476 \
                                          --output-folder predictions \
                                          --config-file configs/predict_nist_test_beam50.yaml \
