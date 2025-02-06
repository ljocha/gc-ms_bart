image=cerit.io/ljocha/spectus:latest

ckpt=${PWD}/../../Adam_models/fearless-wildflower-490_rassp1_neims1_224kPretrain_148k/checkpoint-147476/

run=--rm -ti -v ${PWD}/..:/opt/spectus -v ${ckpt}:/model -p 5000:5000 ${image}


build: # prepare_model
	docker build ${buildopt} -t ${image} .

dev:
	docker run ${run} bash 

demo:
	docker run ${run} /opt/spectus/demo/api/server.sh


prepare_model:
	mkdir -p model
#	for f in config.json  generation_config.json  optimizer.pt  pytorch_model.bin  rng_state.pth  scheduler.pt  special_tokens_map.json  tokenizer_config.json  tokenizer.json  trainer_state.json  training_args.bin
	for f in config.json  generation_config.json  pytorch_model.bin  rng_state.pth  scheduler.pt  special_tokens_map.json  tokenizer_config.json  tokenizer.json  training_args.bin; do cp ${ckpt}/$$f model; done

