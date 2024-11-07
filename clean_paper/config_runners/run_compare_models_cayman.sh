# ./predictions/balmy-violet-577_custom_final/Cayman_library/1730893001_all_full_beam50/predictions.jsonl
# ./predictions/balmy-violet-577_custom_final/Cayman_library/1730892786_all_full_beam10/predictions.jsonl
# ./predictions/balmy-violet-577_custom_final/Cayman_library/1730893023_all_full_greedy/predictions.jsonl
# ./predictions/db_search_morgan_tanimoto/Cayman_library/1730902974_all_full_50cand/predictions.jsonl
# ./predictions/db_search_morgan_tanimoto/Cayman_library/1730911189_all_full_10cand/predictions.jsonl
# ./predictions/db_search_morgan_tanimoto/Cayman_library/1730911145_all_full_1cand/predictions.jsonl
# ./predictions/db_search_sss/Cayman_library/1730902974_all_full_50cand/predictions.jsonl
# ./predictions/db_search_sss/Cayman_library/1730911189_all_full_10cand/predictions.jsonl
# ./predictions/db_search_sss/Cayman_library/1730911145_all_full_1cand/predictions.jsonl
# ./predictions/db_search_hss/Cayman_library/1730902974_all_full_50cand/predictions.jsonl
# ./predictions/db_search_hss/Cayman_library/1730911189_all_full_10cand/predictions.jsonl
# ./predictions/db_search_hss/Cayman_library/1730911145_all_full_1cand/predictions.jsonl

python ../compare_models.py \
                --additional-info "" \
                --models-prediction-paths \
                "./predictions/balmy-violet-577_custom_final/Cayman_library/1730893001_all_full_beam50
                ./predictions/balmy-violet-577_custom_final/Cayman_library/1730892786_all_full_beam10
                ./predictions/balmy-violet-577_custom_final/Cayman_library/1730893023_all_full_greedy" \
                --db-search-prediction-paths \
                "./predictions/db_search_morgan_tanimoto/Cayman_library/1730902974_all_full_50cand
                ./predictions/db_search_morgan_tanimoto/Cayman_library/1730911189_all_full_10cand
                ./predictions/db_search_morgan_tanimoto/Cayman_library/1730911145_all_full_1cand
                ./predictions/db_search_sss/Cayman_library/1730902974_all_full_50cand
                ./predictions/db_search_sss/Cayman_library/1730911189_all_full_10cand
                ./predictions/db_search_sss/Cayman_library/1730911145_all_full_1cand
                ./predictions/db_search_hss/Cayman_library/1730902974_all_full_50cand
                ./predictions/db_search_hss/Cayman_library/1730911189_all_full_10cand
                ./predictions/db_search_hss/Cayman_library/1730911145_all_full_1cand"
