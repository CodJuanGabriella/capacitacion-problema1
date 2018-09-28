FROM nginx:alpine
WORKDIR /app
COPY ./intro.md ./
COPY ./preguntas.md ./
EXPOSE 80