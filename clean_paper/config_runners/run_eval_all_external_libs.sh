MODEL=sleek-cloud-581_9M_448+296k
LIBS=(Cayman_library MONA_GCMS RCX_NO SWGDRUG)
LABELS_DIR="./data/extra_libraries"
CANDS=(1 10 50)
CANDS=(1)

# Correct for loop with proper array reference
lib_index=-1
for lib in ${LIBS[@]} ; do
    lib_index=$((lib_index+1))
    for cands in ${CANDS[@]} ; do
        # resolve the generation method name
        if [ "$cands" -eq 1 ]; then
            gen_method="greedy"
        else
            gen_method="beam$cands"
        fi
        # resolve the labels path
        labels_path=${LABELS_PATHS[$lib_index]}
        # resolve the predictions path
        predictions=`find -name predictions.jsonl -path "./predictions/$MODEL/${lib}/*$gen_method*/*"`
        echo "Processing $lib $cands $gen_method"
        echo "LABELS: $labels_path"
        echo "Processing prediction: $predictions"

        python ../evaluate_predictions.py \
                        --predictions-path $predictions \
                        --config-file configs/evaluate.yaml
    done
done

# Optional: Wait for all background processes to finish
wait