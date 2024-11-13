DB_TYPES=("hss" "sss" "mt")

for db_type in "${DB_TYPES[@]}"
do
    python ../predict_db_search.py --output-folder predictions \
                                   --config-file configs/predict_db_search_${db_type}.yaml \
                                   --num-workers 1 &
done