python ../compare_models.py \
                --additional-info "" \
                --models-prediction-paths \
                "./predictions/balmy-violet-577_custom_final/RCX_OO/1731672409_all_full_beam10
                ./predictions/balmy-violet-577_custom_final/RCX_OO/1731678771_all_full_greedy
                ./predictions/balmy-violet-577_custom_final/RCX_OO/1731678771_all_full_beam50" \
                --db-search-prediction-paths \
                "./predictions/db_search_morgan_tanimoto/RCX_OO/1731680833_all_full_1cand
                ./predictions/db_search_sss/RCX_OO/1731680050_all_full_50cand
                ./predictions/db_search_sss/RCX_OO/1731680833_all_full_1cand
                ./predictions/db_search_sss/RCX_OO/1731680790_all_full_10cand
                ./predictions/db_search_hss/RCX_OO/1731680050_all_full_50cand
                ./predictions/db_search_hss/RCX_OO/1731680833_all_full_1cand
                ./predictions/db_search_hss/RCX_OO/1731680790_all_full_10cand"
