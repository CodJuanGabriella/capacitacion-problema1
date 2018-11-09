FROM node:10.10.0-slim
WORKDIR /app
COPY ./intro.md ./
COPY ./preguntas.md ./
EXPOSE 80 