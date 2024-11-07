# 28177 ./predictions/balmy-violet-577_custom_final/NIST/1730720158_valid_full_greedy/predictions.jsonl
# 28177 ./predictions/balmy-violet-577_custom_final/NIST/1730720159_valid_full_beam10/predictions.jsonl

python ../compare_models.py \
                --additional-info db_searches \
                --db-search-prediction-paths \
                "./predictions/db_search_hss/NIST/1729676322_valid_full_1cand \
                ./predictions/db_search_morgan_tanimoto/NIST/1729630748_valid_full_1cand \
                ./predictions/db_search_sss/NIST/1729676364_valid_full_1cand \
                ./predictions/db_search_hss/NIST/1729676337_valid_full_10cand \
                ./predictions/db_search_sss/NIST/1729676352_valid_full_10cand \
                ./predictions/db_search_hss/NIST/1729605198_valid_full_50cand \
                ./predictions/db_search_sss/NIST/1729629585_valid_full_50cand"
