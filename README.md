## Buildear la imagen
docker build -t josue/orbis-training-docker:0.1.0 .

## Pushear la imagen
export DOCKER_ID_USER="josu3e"
docker login
    josu3e / ******
docker tag josue/orbis-training-docker:0.1.0 $DOCKER_ID_USER/orbis-training-docker
docker push $DOCKER_ID_USER/orbis-training-docker