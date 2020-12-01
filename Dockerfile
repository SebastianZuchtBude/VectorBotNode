FROM node:14.4.0-alpine

WORKDIR /home/node/app
USER root
RUN apk --no-cache add --virtual native-deps \
  g++ gcc libgcc libstdc++ linux-headers make python



CMD npm install worker-farm && npm install ts3-nodejs-library && npm install mysql2 && npm install mysql && npm install inarray && npm cache clean --force --loglevel=error && node main.js
