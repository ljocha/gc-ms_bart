#  NIST
python evaluate_predictions.py --predictions-path ./predictions/royal-violet-583_exp1_lin_10000/NIST/1734179204_valid_full_beam10/predictions.jsonl \
                               --config-file configs/evaluate.yaml

#  db search
# python evaluate_predictions.py --predictions-path predictions/db_search_morgan_tanimoto/NIST/1729630748_valid_full_1cand/predictions.jsonl \
#                                --config-file configs/evaluate.yaml