libname=mona
CVD=2
SCENARIOS=("greedy" "beam10" "beam50")

for scenario in "${SCENARIOS[@]}"
do
    CUDA_VISIBLE_DEVICES=$CVD python src/predict.py --checkpoint checkpoints/finetune_clean/youthful-wave-590_exp5_9M_448+296/checkpoint-294952 \
                                                    --output-folder predictions \
                                                    --config-file configs/predict_${libname}_${scenario}.yaml &
done

wait