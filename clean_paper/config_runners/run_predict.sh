CUDA_VISIBLE_DEVICES=2 python ../predict.py --checkpoint ../checkpoints/finetune_clean/sleek-cloud-581_9M_448+296k/checkpoint-294952 \
                                          --output-folder predictions \
                                          --config-file configs/predict_nist_test_beam50.yaml \
