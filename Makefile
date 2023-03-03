image=ljocha/gc-ms_bart
port=8088

flags=-v ${PWD}:/work -w /work -p ${port}:${port} --rm -ti -e HOME=/work
user=-u ${shell id -u} 
amdflags=--device=/dev/kfd --device=/dev/dri --shm-size 16G --group-add video --group-add render

build-amd:
	docker build -f Dockerfile.amd -t ${image}:amd .

run-amd:
	docker run -ti ${flags} ${user} ${amdflags} ${image}:amd jupyter lab --ip 0.0.0.0 --port ${port}

root-amd:
	docker run -ti ${flags} ${amdflags} ${image}:amd bash
