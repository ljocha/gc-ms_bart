
# ./predictions/balmy-violet-577_exp8_224_148/SWGDRUG/1730884288_all_full_greedy/predictions.jsonl \
# ./predictions/balmy-violet-577_exp8_224_148/SWGDRUG/1730884349_all_full_beam10/predictions.jsonl \
# ./predictions/balmy-violet-577_exp8_224_148/SWGDRUG/1730884425_all_full_beam50/predictions.jsonl \
# ./predictions/db_search_morgan_tanimoto/SWGDRUG/1730893925_all_full_50cand/predictions.jsonl \
# ./predictions/db_search_morgan_tanimoto/SWGDRUG/1730904155_all_full_10cand/predictions.jsonl \
# ./predictions/db_search_morgan_tanimoto/SWGDRUG/1730904214_all_full_1cand/predictions.jsonl
# ./predictions/db_search_hss/SWGDRUG/1730893925_all_full_50cand/predictions.jsonl \
# ./predictions/db_search_hss/SWGDRUG/1730904154_all_full_10cand/predictions.jsonl \
# ./predictions/db_search_hss/SWGDRUG/1730904214_all_full_1cand/predictions.jsonl \
# ./predictions/db_search_sss/SWGDRUG/1730893925_all_full_50cand/predictions.jsonl \
# ./predictions/db_search_sss/SWGDRUG/1730904155_all_full_10cand/predictions.jsonl \
# ./predictions/db_search_sss/SWGDRUG/1730904214_all_full_1cand/predictions.jsonl

python ../compare_models.py \
                --additional-info "" \
                --models-prediction-paths \
                "./predictions/balmy-violet-577_exp8_224_148/SWGDRUG/1730884288_all_full_greedy
                ./predictions/balmy-violet-577_exp8_224_148/SWGDRUG/1730884349_all_full_beam10
                ./predictions/balmy-violet-577_exp8_224_148/SWGDRUG/1730884425_all_full_beam50" \
                --db-search-prediction-paths \
                "./predictions/db_search_morgan_tanimoto/SWGDRUG/1730893925_all_full_50cand
                ./predictions/db_search_morgan_tanimoto/SWGDRUG/1730904155_all_full_10cand
                ./predictions/db_search_morgan_tanimoto/SWGDRUG/1730904214_all_full_1cand
                ./predictions/db_search_hss/SWGDRUG/1730893925_all_full_50cand
                ./predictions/db_search_hss/SWGDRUG/1730904154_all_full_10cand
                ./predictions/db_search_hss/SWGDRUG/1730904214_all_full_1cand
                ./predictions/db_search_sss/SWGDRUG/1730893925_all_full_50cand
                ./predictions/db_search_sss/SWGDRUG/1730904155_all_full_10cand
                ./predictions/db_search_sss/SWGDRUG/1730904214_all_full_1cand"
