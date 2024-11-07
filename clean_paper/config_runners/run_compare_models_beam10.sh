
# 28177 ./predictions/major-capybara-531_exp1_pos_emb/NIST/1728252823_valid_full_beam10/predictions.jsonl
# 28177 ./predictions/fresh-haze-530_exp1_int_emb_exp2_log_9_2.2/NIST/1728252914_valid_full_beam10/predictions.jsonl
# 28177 ./predictions/devout-disco-532_exp2_log_20_1.43/NIST/1728252914_valid_full_beam10/predictions.jsonl
# 28177 ./predictions/apricot-frost-534_exp2_log_39_1.2/NIST/1728252914_valid_full_beam10/predictions.jsonl
# 28177 ./predictions/crisp-meadow-535_exp2_lin_100/NIST/1728252914_valid_full_beam10/predictions.jsonl
# 28177 ./predictions/absurd-wildflower-536_exp2_lin_1000/NIST/1728252914_valid_full_beam10/predictions.jsonl
# 28177 ./predictions/gallant-lion-533_exp2_log_29_1.28_exp3_mf10M/NIST/1728252982_valid_full_beam10/predictions.jsonl
# 28177 ./predictions/noble-glitter-546_exp3_mf10K/NIST/1728252982_valid_full_beam10/predictions.jsonl
# 28177 ./predictions/dashing-grass-547_exp3_mf100/NIST/1728252982_valid_full_beam10/predictions.jsonl
# 28177 ./predictions/exalted-elevator-545_exp3_mf10/NIST/1728252984_valid_full_beam10/predictions.jsonl
# 28177 ./predictions/devoted-feather-548_exp3_selfies/NIST/1728252984_valid_full_beam10/predictions.jsonl
# 28177 ./predictions/avid-rain-560_exp4_rassp/NIST/1728253265_valid_full_beam10/predictions.jsonl
# 28177 ./predictions/valiant-totem-557_exp4_neims/NIST/1728253269_valid_full_beam10/predictions.jsonl
# 28177 ./predictions/effortless-river-558_exp4_rassp_neims/NIST/1728253269_valid_full_beam10/predictions.jsonl
# 28177 ./predictions/hopeful-rain-557_exp4_rassp_neims_nist/NIST/1730371971_valid_full_beam10/predictions.jsonl
# 28177 ./predictions/hearty-leaf-572_exp7_custom_rassp/NIST/1730370869_valid_full_beam10/predictions.jsonl
# 28177 ./predictions/dulcet-cloud-568_exp7_custom_neims/NIST/1730370869_valid_full_beam10/predictions.jsonl
# 28177 ./predictions/likely-sea-573_exp7_custom_rassp_neims/NIST/1730370869_valid_full_beam10/predictions.jsonl
# 28177 ./predictions/valiant-galaxy-574_exp7_custom_rassp_neims_nist/NIST/1730370869_valid_full_beam10/predictions.jsonl
# 28177 ./predictions/hardy-bush-576_exp5_custom_one_src_token/NIST/1730720159_valid_full_beam10/predictions.jsonl
# 28177 ./predictions/jolly-lion-562_exp6_45perc_frozen/NIST/1728294009_valid_full_beam10/predictions.jsonl
# 28177 ./predictions/smooth-totem-563_exp6_72perc_frozen/NIST/1728294008_valid_full_beam10/predictions.jsonl
# 28177 ./predictions/fearless-wildflower-490_rassp1_neims1_224kPretrain_148k/NIST/1730465603_valid_full_beam10/predictions.jsonl
# 28177 ./predictions/balmy-violet-577_custom_final/NIST/1730720159_valid_full_beam10/predictions.jsonl


python ../compare_models.py \
                --additional-info all_beam10 \
                --models-prediction-paths \
                "./predictions/major-capybara-531_exp1_pos_emb/NIST/1728252823_valid_full_beam10 \
                ./predictions/fresh-haze-530_exp1_int_emb_exp2_log_9_2.2/NIST/1728252914_valid_full_beam10 \
                ./predictions/devout-disco-532_exp2_log_20_1.43/NIST/1728252914_valid_full_beam10 \
                ./predictions/apricot-frost-534_exp2_log_39_1.2/NIST/1728252914_valid_full_beam10 \
                ./predictions/crisp-meadow-535_exp2_lin_100/NIST/1728252914_valid_full_beam10 \
                ./predictions/absurd-wildflower-536_exp2_lin_1000/NIST/1728252914_valid_full_beam10 \
                ./predictions/gallant-lion-533_exp2_log_29_1.28_exp3_mf10M/NIST/1728252982_valid_full_beam10 \
                ./predictions/noble-glitter-546_exp3_mf10K/NIST/1728252982_valid_full_beam10 \
                ./predictions/dashing-grass-547_exp3_mf100/NIST/1728252982_valid_full_beam10 \
                ./predictions/exalted-elevator-545_exp3_mf10/NIST/1728252984_valid_full_beam10 \
                ./predictions/devoted-feather-548_exp3_selfies/NIST/1728252984_valid_full_beam10 \
                ./predictions/avid-rain-560_exp4_rassp/NIST/1728253265_valid_full_beam10 \
                ./predictions/valiant-totem-557_exp4_neims/NIST/1728253269_valid_full_beam10 \
                ./predictions/effortless-river-558_exp4_rassp_neims/NIST/1728253269_valid_full_beam10 \
                ./predictions/hopeful-rain-557_exp4_rassp_neims_nist/NIST/1730371971_valid_full_beam10 \
                ./predictions/hearty-leaf-572_exp7_custom_rassp/NIST/1730370869_valid_full_beam10 \
                ./predictions/dulcet-cloud-568_exp7_custom_neims/NIST/1730370869_valid_full_beam10 \
                ./predictions/likely-sea-573_exp7_custom_rassp_neims/NIST/1730370869_valid_full_beam10 \
                ./predictions/valiant-galaxy-574_exp7_custom_rassp_neims_nist/NIST/1730370869_valid_full_beam10 \
                ./predictions/hardy-bush-576_exp5_custom_one_src_token/NIST/1730720159_valid_full_beam10 \
                ./predictions/jolly-lion-562_exp6_45perc_frozen/NIST/1728294009_valid_full_beam10 \
                ./predictions/smooth-totem-563_exp6_72perc_frozen/NIST/1728294008_valid_full_beam10 \
                ./predictions/fearless-wildflower-490_rassp1_neims1_224kPretrain_148k/NIST/1730465603_valid_full_beam10 \
                ./predictions/balmy-violet-577_custom_final/NIST/1730720159_valid_full_beam10" \
                --db-search-prediction-paths \
                "./predictions/db_search_hss/NIST/1729676337_valid_full_10cand \
                ./predictions/db_search_morgan_tanimoto/NIST/1729630722_valid_full_10cand \
                ./predictions/db_search_sss/NIST/1729676352_valid_full_10cand"
