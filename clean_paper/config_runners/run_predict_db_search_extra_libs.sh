python ../predict_db_search.py --output-folder predictions \
                               --config-file configs/predict_db_search_hss_extra_libs.yaml \
                               --num-workers 1 &

python ../predict_db_search.py --output-folder predictions \
                               --config-file configs/predict_db_search_sss_extra_libs.yaml \
                               --num-workers 1 &

python ../predict_db_search.py --output-folder predictions \
                               --config-file configs/predict_db_search_mt_extra_libs.yaml \
                               --num-workers 1 &