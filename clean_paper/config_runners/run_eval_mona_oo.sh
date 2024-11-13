PREDICTIONS=(./predictions/balmy-violet-577_custom_final/MONA_GCMS_overlaps_only/1730907164_all_full_beam10/predictions.jsonl \
            ./predictions/balmy-violet-577_custom_final/MONA_GCMS_overlaps_only/1730907162_all_full_beam50/predictions.jsonl \
            ./predictions/balmy-violet-577_custom_final/MONA_GCMS_overlaps_only/1730907164_all_full_greedy/predictions.jsonl \
            ./predictions/db_search_morgan_tanimoto/MONA_GCMS_overlaps_only/1730984285_all_full_1cand/predictions.jsonl \
            ./predictions/db_search_morgan_tanimoto/MONA_GCMS_overlaps_only/1730916155_all_full_50cand/predictions.jsonl \
            ./predictions/db_search_morgan_tanimoto/MONA_GCMS_overlaps_only/1730983692_all_full_10cand/predictions.jsonl \
            ./predictions/db_search_sss/MONA_GCMS_overlaps_only/1730984285_all_full_1cand/predictions.jsonl \
            ./predictions/db_search_sss/MONA_GCMS_overlaps_only/1730916155_all_full_50cand/predictions.jsonl \
            ./predictions/db_search_sss/MONA_GCMS_overlaps_only/1730981471_all_full_10cand/predictions.jsonl \
            ./predictions/db_search_hss/MONA_GCMS_overlaps_only/1730984285_all_full_1cand/predictions.jsonl \
            ./predictions/db_search_hss/MONA_GCMS_overlaps_only/1730916155_all_full_50cand/predictions.jsonl \
            ./predictions/db_search_hss/MONA_GCMS_overlaps_only/1730981471_all_full_10cand/predictions.jsonl \
)

# Correct for loop with proper array reference
for prediction in "${PREDICTIONS[@]}" ; do
    echo "Processing prediction: $prediction `wc -l $prediction`"
    python ../evaluate_predictions.py --predictions-path $prediction \
                                    --labels-path data/extra_libraries/MONA_GCMS/MONA_GCMS_overlaps_only.jsonl \
                                    --config-file configs/evaluate.yaml &
done









# Optional: Wait for all background processes to finish
wait