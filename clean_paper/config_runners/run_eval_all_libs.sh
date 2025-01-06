MODEL_NAME="youthful-wave-590_exp8_9M_448+296"

# Correct for loop with proper array reference
for prediction in `find ../predictions/$MODEL_NAME -type f -name "predictions.jsonl" ! -path "*/NIST/*"` ; do
    echo "Processing prediction: `wc -l $prediction`"
    python ../evaluate_predictions.py --predictions-path $prediction \
                                    --config-file configs/evaluate_nist.yaml &
done



# Optional: Wait for all background processes to finish
wait