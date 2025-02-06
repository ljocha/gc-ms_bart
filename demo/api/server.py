# (c) ChatGPT :-)
# vim: ts=4 expandtab ai:

from flask import Flask, request, jsonify
from flask_limiter import Limiter
from flask_limiter.util import get_remote_address
from threading import Thread, Lock
from queue import Queue
import time
import uuid
import os
import shutil
import tempfile
import yaml
import json
import glob

app = Flask(__name__)

spectus = '/opt/spectus/'
predict =  spectus + 'spectus/predict.py'
config = spectus + 'configs/predict_example.yaml'
checkpoint = '/model/'
tokenizer = spectus + 'tokenizer/tokenizer_mf10M.model'

tmp = tempfile.gettempdir()  

# Rate limiter, limiting to 20 requests per day per IP
limiter = Limiter(
    get_remote_address,
    app=app,
    default_limits=["20 per day"]
)

# In-memory structures
requests_queue = Queue()
requests_status = {}
results = {}
lock = Lock()

# Function to process requests
def process_requests():
    while True:
        req = requests_queue.get()

        if req is None:  # Exit signal
            break

        request_id = req['id']

        with lock:
            requests_status[request_id]['status'] = 'running'
	
        with open(config) as ct:
            cfg = yaml.safe_load(ct)

        cfg['tokenizer_path'] = tokenizer
        cfg['dataset'] = {
            'data_path' : f'{tmp}/{request_id}/in.jsonl',
            'dataset_name': 'demo',
            'data_split': 'all'
        }
        cfg['general']['device'] = 'cpu'

        cfg['generation_args']['num_return_sequences'] = req['topk']
        cfg['generation_args']['num_beams'] = req['topk']

        with open(f'{tmp}/{request_id}/config.yml','w') as cf:
            yaml.safe_dump(cfg, cf, default_flow_style=False)

        del req['topk']
        req['smiles'] = 'H'
        with open(f'{tmp}/{request_id}/in.jsonl','w') as i:
            i.write(json.dumps(req))


        ret = os.system(f'python {predict} --config-file {tmp}/{request_id}/config.yml --checkpoint {checkpoint} --output-folder {tmp}/{request_id}')

        if ret == 0:
            with open(glob.glob(f'{tmp}/{request_id}/demo/*/predictions.jsonl')[0]) as r:
                for l in r: # XXX: one line
                    res = json.loads(l)

        with lock:
            if ret == 0:
                requests_status[request_id]['status'] = 'completed'
                results[request_id] = {
                    'result': res,
                    'timestamp': time.time()
                }
            else:
                requests_status[request_id]['status'] = 'failed'
	
# Start the processing thread
thread = Thread(target=process_requests)
thread.start()

# Cleanup thread to remove old results
def cleanup_results():
    while True:
        time.sleep(3600)  # Cleanup every hour
        with lock:
            current_time = time.time()
            old_results = [req_id for req_id, res in results.items()
                           if current_time - res['timestamp'] > 21600]  # 6 hours
            for req_id in old_results:
                del results[req_id]
                del requests_status[req_id]
                shutil.rmtree(f'{tmp}/{req_id}')

cleanup_thread = Thread(target=cleanup_results)
cleanup_thread.start()

@app.route('/predictions', methods=['POST'])
@limiter.limit("20 per day")  # Additional rate limit for POST
def create_request():
    request_id = str(uuid.uuid4())
    with lock:
        requests_status[request_id] = {
            'status': 'queued',
            'timestamp': time.time()
        }
        requests_queue.put({
            'id': request_id,
            'topk': request.json['topk'],
            'mz' : request.json['mz'],
            'intensity': request.json['intensity']
            } )

    os.makedirs(f'{tmp}/{request_id}', exist_ok=True)
    return jsonify({'id': request_id}), 202

@app.route('/predictions/<string:request_id>', methods=['GET'])
def get_request_status(request_id):
    with lock:
        if request_id in requests_status:
            status = requests_status[request_id]
            if status['status'] == 'completed':
                result = results.get(request_id, {}).get('result', 'No result found')
                return jsonify({'status': status['status'], 'result': result}), 200
            return jsonify({'status': status['status']}), 200
        return jsonify({'error': 'Request not found'}), 404

if __name__ == '__main__':
    try:
        app.run(host='0.0.0.0', port=5000, threaded=True)
    finally:
        requests_queue.put(None)  # Signal the processing thread to exit
        thread.join()
        cleanup_thread.join()

