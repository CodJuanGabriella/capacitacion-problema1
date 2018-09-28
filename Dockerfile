
FROM node:10.10.0-slim
RUN mkdir /usr/src/app
WORKDIR /app
LABEL maintainer="josue.quispe@orbis.com.pe"
RUN npm install
COPY preguntas.md /app
RUN ls /app
RUN cat preguntas.md
EXPOSE 8080
CMD [ "npm", "start" ]