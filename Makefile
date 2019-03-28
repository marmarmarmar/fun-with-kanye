build: 
	docker build . -t kantye-docker-image

run-notebooks:
	docker run -it -v ${PWD}:/src -p 8899:8899 kantye-docker-image \
	       	bash -c "jupyter-notebook --port=8899 --ip=0.0.0.0 \
	       	--allow-root --NotebookApp.token='' --NotebookApp.password=''"
