.PHONY: resources

include makefiles/task.mk
include makefiles/deploy-ghpages.mk

export NAME ?= Harry Potter local
NAME_IMAGE ?= josu3e/orbis-training-docker
DOCKER_TAG ?= 2.0.0
DOCKER_IMAGE ?= ${NAME_IMAGE}:${DOCKER_TAG}
DOCKER_VOLUME = ${PWD}:/app

project-workspace:
	docker rm -f workspace
	docker create -v /app/ --name workspace alpine
	docker cp ./ workspace:/app/

install:
	# @docker run --workdir=/app -v ${DOCKER_VOLUME} ${DOCKER_IMAGE} npm install
	docker run --volumes-from workspace -w /app $(DOCKER_IMAGE) npm install

start:
	# docker run -p "3030:1042" -p "35729:35729" --workdir=/app -v ${DOCKER_VOLUME} ${DOCKER_IMAGE} npm start
	docker run -d --volumes-from workspace -w /app -p 3030:1042 -p 35729:35729 $(DOCKER_IMAGE) npm start

release:
	# docker run --workdir=/app -v ${DOCKER_VOLUME} ${DOCKER_IMAGE} npm run release
	docker run --volumes-from workspace -w /app $(DOCKER_IMAGE) npm run release
	docker cp workspace:/app/deploy $(PWD)

greet:
	# @docker run -v ${PWD}/resources:/resources -e NAME="${NAME}" node:10.10.0-slim bash /resources/example.sh
	# @bash ./resources/example.sh
	docker run --volumes-from workspace -w /app $(DOCKER_IMAGE) sh resources/example.sh ${NAME}

curl:
	echo 'Hola recursos!'
	@echo ${DOCKER_IMAGE}