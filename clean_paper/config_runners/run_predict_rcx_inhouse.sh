CVD=1

# CUDA_VISIBLE_DEVICES=$CVD python ../predict.py --checkpoint ../checkpoints/finetune_clean/balmy-violet-577_custom_final/checkpoint-147476 \
#                                           --output-folder predictions \
#                                           --config-file configs/predict_rcx_inhouse_beam10.yaml &

CUDA_VISIBLE_DEVICES=$CVD python ../predict.py --checkpoint ../checkpoints/finetune_clean/balmy-violet-577_custom_final/checkpoint-147476 \
                                          --output-folder predictions \
                                          --config-file configs/predict_rcx_inhouse_beam50.yaml &


# CUDA_VISIBLE_DEVICES=$CVD python ../predict.py --checkpoint ../checkpoints/finetune_clean/balmy-violet-577_custom_final/checkpoint-147476 \
#                                           --output-folder predictions \
#                                           --config-file configs/predict_rcx_inhouse_greedy.yaml &
