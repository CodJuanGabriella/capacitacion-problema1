build:
	docker build . -t josu3e/orbis-training-docker:2.0.0
push:
	@make login
	docker push josu3e/orbis-training-docker:2.0.0
up:
	docker-compose up
login:
	docker login