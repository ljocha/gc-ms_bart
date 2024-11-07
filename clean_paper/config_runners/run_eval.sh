# # MACE
# python ../evaluate_predictions.py --predictions-path predictions/hopeful-rain-557_exp4_rassp_neims_nist/MACE/1727882289_all_full_beam10/predictions.jsonl \
#                                   --labels-path data/mace/MACE_r05_with_db_index.jsonl \
#                                   --config-file configs/evaluate_mace.yaml

#  NIST
python evaluate_predictions.py --predictions-path predictions/absurd-wildflower-536_exp2_lin_1000/NIST/1728026100_valid_full_greedy/predictions.jsonl \
                                  --labels-path data/nist/valid_with_db_index.jsonl \
                                  --config-file configs/evaluate_nist.yaml

#  db search
# python evaluate_predictions.py --predictions-path predictions/db_search_morgan_tanimoto/NIST/1729630748_valid_full_1cand/predictions.jsonl \
#                                   --labels-path data/nist/valid_with_db_index.jsonl \
#                                   --config-file configs/evaluate_nist.yaml