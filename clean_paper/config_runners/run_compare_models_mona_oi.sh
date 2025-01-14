
# ./predictions/db_search_morgan_tanimoto/MONA_GCMS_overlaps_included/1730916155_all_full_50cand
# ./predictions/db_search_morgan_tanimoto/MONA_GCMS_overlaps_included/1730983692_all_full_10cand
# ./predictions/db_search_morgan_tanimoto/MONA_GCMS_overlaps_included/1730984285_all_full_1cand
# ./predictions/db_search_sss/MONA_GCMS_overlaps_included/1730916155_all_full_50cand
# ./predictions/db_search_sss/MONA_GCMS_overlaps_included/1730981471_all_full_10cand
# ./predictions/db_search_sss/MONA_GCMS_overlaps_included/1730984285_all_full_1cand
# ./predictions/db_search_sss/MONA_GCMS_overlaps_included/1730983692_all_full_10cand
# ./predictions/db_search_hss/MONA_GCMS_overlaps_included/1730916155_all_full_50cand
# ./predictions/db_search_hss/MONA_GCMS_overlaps_included/1730981471_all_full_10cand
# ./predictions/db_search_hss/MONA_GCMS_overlaps_included/1730984285_all_full_1cand

python ../compare_models.py \
                --additional-info "" \
                --models-prediction-paths \
                "./predictions/balmy-violet-577_exp8_224_148/MONA_GCMS_overlaps_included/1730907162_all_full_beam50
                ./predictions/balmy-violet-577_exp8_224_148/MONA_GCMS_overlaps_included/1730907164_all_full_beam10
                ./predictions/balmy-violet-577_exp8_224_148/MONA_GCMS_overlaps_included/1730907164_all_full_greedy" \
                --db-search-prediction-paths \
                "./predictions/db_search_sss/MONA_GCMS_overlaps_included/1730916155_all_full_50cand
                ./predictions/db_search_sss/MONA_GCMS_overlaps_included/1730981471_all_full_10cand
                ./predictions/db_search_sss/MONA_GCMS_overlaps_included/1730984285_all_full_1cand
                ./predictions/db_search_hss/MONA_GCMS_overlaps_included/1730916155_all_full_50cand
                ./predictions/db_search_hss/MONA_GCMS_overlaps_included/1730981471_all_full_10cand
                ./predictions/db_search_hss/MONA_GCMS_overlaps_included/1730984285_all_full_1cand
                ./predictions/db_search_morgan_tanimoto/MONA_GCMS_overlaps_included/1730984285_all_full_1cand"
