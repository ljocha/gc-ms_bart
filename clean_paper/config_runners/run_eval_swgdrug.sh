

PREDICTIONS=(./predictions/balmy-violet-577_custom_final/SWGDRUG/1730884288_all_full_greedy/predictions.jsonl \
             ./predictions/balmy-violet-577_custom_final/SWGDRUG/1730884349_all_full_beam10/predictions.jsonl \
             ./predictions/balmy-violet-577_custom_final/SWGDRUG/1730884425_all_full_beam50/predictions.jsonl \
             ./predictions/db_search_morgan_tanimoto/SWGDRUG/1730893925_all_full_50cand/predictions.jsonl \
             ./predictions/db_search_morgan_tanimoto/SWGDRUG/1730904155_all_full_10cand/predictions.jsonl \
             ./predictions/db_search_morgan_tanimoto/SWGDRUG/1730904214_all_full_1cand/predictions.jsonl
             ./predictions/db_search_hss/SWGDRUG/1730893925_all_full_50cand/predictions.jsonl \
             ./predictions/db_search_hss/SWGDRUG/1730904154_all_full_10cand/predictions.jsonl \
             ./predictions/db_search_hss/SWGDRUG/1730904214_all_full_1cand/predictions.jsonl \
             ./predictions/db_search_sss/SWGDRUG/1730893925_all_full_50cand/predictions.jsonl \
             ./predictions/db_search_sss/SWGDRUG/1730904155_all_full_10cand/predictions.jsonl \
             ./predictions/db_search_sss/SWGDRUG/1730904214_all_full_1cand/predictions.jsonl


)

# Correct for loop with proper array reference
for prediction in "${PREDICTIONS[@]}" ; do
    echo "Processing prediction: $prediction `wc -l $prediction`"
    python ../evaluate_predictions.py --predictions-path $prediction \
                                    --labels-path data/extra_libraries/SWGDRUG_3/SWGDRUG_3_noD.jsonl \
                                    --config-file configs/evaluate.yaml &
done









# Optional: Wait for all background processes to finish
wait