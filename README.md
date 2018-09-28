## Buildear la imagen
docker build -t orbis-training-docker:0.1.0 .

## Pushear la imagen
export DOCKER_ID_USER="josu3e"
docker login
    josu3e / ******
docker tag orbis-training-docker:0.1.0 $DOCKER_ID_USER/orbis-training-docker:0.1.0
docker push $DOCKER_ID_USER/orbis-training-docker:0.1.0

## Taggear la imagen
 docker tag 936235ed53c4 $DOCKER_ID_USER/orbis-training-docker:0.2.0
 docker push $DOCKER_ID_USER/orbis-training-docker:0.2.0

 ## Respondiendo
1. ¿Qué importancia tiene los tags en un proyecto?
    Una etiqueta ligera es muy parecido a una rama que no cambia - simplemente es un puntero a un commit específico, que puede permitir revertir cambio de manera mas facil y/o cambiar entre versiones.
2. ¿Cuál es la diferencia entre un tag normal y un tag anotado en git?
    La diferencia entre los comandos es que uno le proporciona un mensaje de etiqueta mientras que el otro no. Una etiqueta anotada tiene un mensaje que se puede mostrar con git-show (1), mientras que una etiqueta sin anotaciones es solo un puntero con nombre a una confirmación.
3. ¿Cómo se sube todos los tags de git que hay en mi local?
    git push --tags
4. ¿Es necesario loguearse cada vez que subo una imagen a dockerhub?
    No, se guarda encriptada de manera local
5. ¿Qué es y para qué sirve docker?
    Es un proyecto de código libre que se ha convertido en uno de los términos de moda por las ventajas que proporciona, entre otros, a los profesionales del desarrollo web y de aplicaciones, o los administradores de sistemas, por la facilidad que supone el trabajar con el concepto de contenedores.
6. ¿Cuál es la diferencia entre docker y VirtualBox (virtualización)?
    por el uso del hipervisor
7. ¿Es necesario depender de una imagen de docker base al crear una imagen nueva?
    Si, porque en nuestro dockerfile usamos una imagen ya sea local o cloud, asi poder levantar esta y ejecuar los comandos.
8. ¿Porqué debo anteponer el nombre de usuario en una imagen docker nueva?
    Para cambiar el nombre del imagen
9. ¿Que pasa si creo una imagen sin especificar una versión o tag, con qué versión se crea?
    Se crea con al tag "latest"

## bash and -it
¿Porqué es necesario crear un contenedor con esta bandera -it ? ¿Qué pasa si no le pongo -it?
Para mantener abierto el contenedor de forma iterativa. Se cierre
¿Para qué sirve ejecutar el comando bash al eejcutar una imagen?
Para ejecutar el terminal.

# ps and ps -a
 ¿Cuál es la diferencia entre docker ps y docker ps -a?
 ps se ven los contenedores levantados y el otro te lista todos los contenedores.

# Comandos para listar
 RUN ls /app
 RUN cat preguntas.md


 Preguntas:

1. ¿Cuál es la diferencia entre una imagen y un contenedor?
De una imagen se construye un contenedor
2. ¿Cómo listo las imágenes que hay en mi computadora?
docker images
3. ¿Cómo salgo de un contenedor de docker?
exit
4. ¿Se elimina el contenedor al salir de ella?
no
5. ¿Cómo elimino un contenedor?
docker rm
6. ¿Para qué es necesario el flag `-i`, `-t`, `--rm`?
Para ingresar al contenerdor , para añadir un tag , para remover un contenedor
7. ¿Cómo verifico que el archivo creado se encuentra en la imagen?
bash
8. ¿Cómo se comenta una linea de código en Dockerfile?
 con el simbilo '#'


 ## Preguntas
1. ¿Qué es NGINX?
    NGINX es un servidor HTTP de alto rendimiento, libre y de código abierto, así como un servidor proxy IMAP / POP3. NGINX es conocido por su alto rendimiento, estabilidad, amplio conjunto de funciones, configuración simple y bajo consumo de recursos.
2. ¿Cómo expongo puertos en docker?
    EXPOSE en el dockerfile
3. ¿Cómo especifico los puertos al levantar un contenedor (docker run)?
    -p 1080:80
4. ¿Cómo hago 'forward' al levantar un contenedor (docker run)?
    -p

