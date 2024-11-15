python ../compare_models.py \
                --additional-info "" \
                --models-prediction-paths \
                "./predictions/balmy-violet-577_custom_final/RCX_NO/1731679333_all_full_beam50
                ./predictions/balmy-violet-577_custom_final/RCX_NO/1731672275_all_full_beam10
                ./predictions/balmy-violet-577_custom_final/RCX_NO/1731678847_all_full_greedy" \
                --db-search-prediction-paths \
                "./predictions/db_search_morgan_tanimoto/RCX_NO/1731680876_all_full_1cand
                ./predictions/db_search_sss/RCX_NO/1731679744_all_full_50cand
                ./predictions/db_search_sss/RCX_NO/1731680931_all_full_10cand
                ./predictions/db_search_sss/RCX_NO/1731680876_all_full_1cand
                ./predictions/db_search_hss/RCX_NO/1731679744_all_full_50cand
                ./predictions/db_search_hss/RCX_NO/1731680931_all_full_10cand
                ./predictions/db_search_hss/RCX_NO/1731680876_all_full_1cand"
