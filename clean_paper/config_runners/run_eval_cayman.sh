PREDICTIONS=(./predictions/balmy-violet-577_custom_final/Cayman_library/1730893001_all_full_beam50/predictions.jsonl \
            ./predictions/balmy-violet-577_custom_final/Cayman_library/1730893023_all_full_greedy/predictions.jsonl \
            ./predictions/balmy-violet-577_custom_final/Cayman_library/1730892786_all_full_beam10/predictions.jsonl \
            ./predictions/db_search_morgan_tanimoto/Cayman_library/1730911189_all_full_10cand/predictions.jsonl \
            ./predictions/db_search_morgan_tanimoto/Cayman_library/1730902974_all_full_50cand/predictions.jsonl \
            ./predictions/db_search_morgan_tanimoto/Cayman_library/1730911145_all_full_1cand/predictions.jsonl \
            ./predictions/db_search_sss/Cayman_library/1730911189_all_full_10cand/predictions.jsonl \
            ./predictions/db_search_sss/Cayman_library/1730902974_all_full_50cand/predictions.jsonl \
            ./predictions/db_search_sss/Cayman_library/1730911145_all_full_1cand/predictions.jsonl \
            ./predictions/db_search_hss/Cayman_library/1730911189_all_full_10cand/predictions.jsonl \
            ./predictions/db_search_hss/Cayman_library/1730902974_all_full_50cand/predictions.jsonl \
            ./predictions/db_search_hss/Cayman_library/1730911145_all_full_1cand/predictions.jsonl \
)

# Correct for loop with proper array reference
for prediction in "${PREDICTIONS[@]}" ; do
    echo "Processing prediction: $prediction `wc -l $prediction`"
    python ../evaluate_predictions.py --predictions-path $prediction \
                                    --labels-path data/extra_libraries/Cayman_library/Cayman_library_noD.jsonl \
                                    --config-file configs/evaluate.yaml &
done









# Optional: Wait for all background processes to finish
wait