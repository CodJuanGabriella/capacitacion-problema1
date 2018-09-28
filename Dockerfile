
FROM node:10.10.0-slim
WORKDIR /usr/src/app
LABEL maintainer="josue.quispe@orbis.com.pe"
RUN npm install
EXPOSE 8080
CMD [ "npm", "start" ]