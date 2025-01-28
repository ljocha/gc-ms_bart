# ./predictions/balmy-violet-577_exp8_224_148/MONA_GCMS/1730895666_all_full_beam50/predictions.jsonl
# ./predictions/balmy-violet-577_exp8_224_148/MONA_GCMS/1730895666_all_full_beam10/predictions.jsonl \
# ./predictions/balmy-violet-577_exp8_224_148/MONA_GCMS/1730895666_all_full_greedy/predictions.jsonl \
# ./predictions/db_search_morgan_tanimoto/MONA_GCMS/1730984595_all_full_10cand/predictions.jsonl \
# ./predictions/db_search_morgan_tanimoto/MONA_GCMS/1730902115_all_full_50cand/predictions.jsonl \
# ./predictions/db_search_morgan_tanimoto/MONA_GCMS/1730984558_all_full_1cand/predictions.jsonl \
# ./predictions/db_search_sss/MONA_GCMS/1730984595_all_full_10cand/predictions.jsonl \
# ./predictions/db_search_sss/MONA_GCMS/1730902115_all_full_50cand/predictions.jsonl \
# ./predictions/db_search_sss/MONA_GCMS/1730984558_all_full_1cand/predictions.jsonl \
# ./predictions/db_search_hss/MONA_GCMS/1730984595_all_full_10cand/predictions.jsonl \
# ./predictions/db_search_hss/MONA_GCMS/1730902115_all_full_50cand/predictions.jsonl \
# ./predictions/db_search_hss/MONA_GCMS/1730984558_all_full_1cand/predictions.jsonl \

python ../compare_models.py \
                --additional-info "" \
                --models-prediction-paths \
                "./predictions/balmy-violet-577_exp8_224_148/MONA_GCMS/1730895666_all_full_beam50
                ./predictions/balmy-violet-577_exp8_224_148/MONA_GCMS/1730895666_all_full_beam10
                ./predictions/balmy-violet-577_exp8_224_148/MONA_GCMS/1730895666_all_full_greedy" \
                --db-search-prediction-paths \
                "./predictions/db_search_morgan_tanimoto/MONA_GCMS/1730984558_all_full_1cand
                ./predictions/db_search_sss/MONA_GCMS/1730984595_all_full_10cand
                ./predictions/db_search_sss/MONA_GCMS/1730902115_all_full_50cand
                ./predictions/db_search_sss/MONA_GCMS/1730984558_all_full_1cand
                ./predictions/db_search_hss/MONA_GCMS/1730984595_all_full_10cand
                ./predictions/db_search_hss/MONA_GCMS/1730902115_all_full_50cand
                ./predictions/db_search_hss/MONA_GCMS/1730984558_all_full_1cand"
