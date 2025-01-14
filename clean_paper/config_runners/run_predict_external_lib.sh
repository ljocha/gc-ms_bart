libname=mona
CVD=2

CUDA_VISIBLE_DEVICES=$CVD python ../predict.py --checkpoint ../checkpoints/finetune_clean/balmy-violet-577_exp8_224_148/checkpoint-147476 \
                                          --output-folder predictions \
                                          --config-file configs/predict_${libname}_beam10.yaml &

CUDA_VISIBLE_DEVICES=$CVD python ../predict.py --checkpoint ../checkpoints/finetune_clean/balmy-violet-577_exp8_224_148/checkpoint-147476 \
                                          --output-folder predictions \
                                          --config-file configs/predict_${libname}_beam50.yaml &


CUDA_VISIBLE_DEVICES=$CVD python ../predict.py --checkpoint ../checkpoints/finetune_clean/balmy-violet-577_exp8_224_148/checkpoint-147476 \
                                          --output-folder predictions \
                                          --config-file configs/predict_${libname}_greedy.yaml &
