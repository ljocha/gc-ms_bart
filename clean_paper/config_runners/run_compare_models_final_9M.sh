# ./predictions/balmy-violet-577_custom_final/NIST/1730720158_test_full_greedy/predictions.jsonl
# ./predictions/balmy-violet-577_custom_final/NIST/1730754395_test_full_beam50/predictions.jsonl
# ./predictions/balmy-violet-577_custom_final/NIST/1730720159_test_full_beam10/predictions.jsonl
# ./predictions/db_search_morgan_tanimoto/NIST/1731490929_test_full_1cand/predictions.jsonl
# ./predictions/db_search_sss/NIST/1731407440_test_full_50cand/predictions.jsonl
# ./predictions/db_search_sss/NIST/1731490929_test_full_1cand/predictions.jsonl
# ./predictions/db_search_sss/NIST/1731490894_test_full_10cand/predictions.jsonl
# ./predictions/db_search_hss/NIST/1731407440_test_full_50cand/predictions.jsonl
# ./predictions/db_search_hss/NIST/1731490929_test_full_1cand/predictions.jsonl
# ./predictions/db_search_hss/NIST/1731490894_test_full_10cand/predictions.jsonl

MODEL=sleek-cloud-581_9M_448+296k
LIBS=(NIST)
# DB_SEARCHES=(db_search_hss db_search_morgan_tanimoto db_search_sss)
# cands=(1 10 50)

# for each library and each num of candidates compare the model with all db_searches
for lib in ${LIBS[@]}; do
    model_predictions=`find -maxdepth 4 -path "./predictions/$MODEL/$lib/*test*"`
    db_search_predictions=`find -maxdepth 4 -regex "./predictions/db_search_\(sss\|hss\)/$lib/.*test.*"`
    db_search_morgan_tanimoto=`find -maxdepth 4 -path "./predictions/db_search_morgan_tanimoto/$lib/*test*1cand*"`
    echo "Processing $lib"
    echo "Processing model prediction: $model_predictions"
    echo "Processing db search prediction: $db_search_predictions"
    python ../compare_models.py \
        --additional-info "9M" \
        --models-prediction-paths "$model_predictions" \
        --db-search-prediction-paths "$db_search_morgan_tanimoto \
                                     $db_search_predictions" \
        --save-path ./results/sleek_cloud &
done