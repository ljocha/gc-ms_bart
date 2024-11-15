PREDICTIONS=(./predictions/balmy-violet-577_custom_final/RCX_NO/1731678847_all_full_greedy/predictions.jsonl \
            ./predictions/balmy-violet-577_custom_final/RCX_NO/1731679333_all_full_beam50/predictions.jsonl \
            ./predictions/balmy-violet-577_custom_final/RCX_NO/1731672275_all_full_beam10/predictions.jsonl \
            ./predictions/db_search_morgan_tanimoto/RCX_NO/1731679744_all_full_50cand/predictions.jsonl \
            ./predictions/db_search_morgan_tanimoto/RCX_NO/1731680931_all_full_10cand/predictions.jsonl \
            ./predictions/db_search_morgan_tanimoto/RCX_NO/1731680876_all_full_1cand/predictions.jsonl \
            ./predictions/db_search_sss/RCX_NO/1731679744_all_full_50cand/predictions.jsonl \
            ./predictions/db_search_sss/RCX_NO/1731680931_all_full_10cand/predictions.jsonl \
            ./predictions/db_search_sss/RCX_NO/1731680876_all_full_1cand/predictions.jsonl \
            ./predictions/db_search_hss/RCX_NO/1731679744_all_full_50cand/predictions.jsonl \
            ./predictions/db_search_hss/RCX_NO/1731680931_all_full_10cand/predictions.jsonl \
            ./predictions/db_search_hss/RCX_NO/1731680876_all_full_1cand/predictions.jsonl \
)

# Correct for loop with proper array reference
for prediction in "${PREDICTIONS[@]}" ; do
    echo "Processing prediction: $prediction `wc -l $prediction`"
    python ../evaluate_predictions.py --predictions-path $prediction \
                                    --labels-path data/rcx_inhouse/rcx_inhouse_no_overlaps.jsonl \
                                    --config-file configs/evaluate.yaml &
done









# Optional: Wait for all background processes to finish
wait