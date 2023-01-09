FROM node:lts-alpine
RUN apk update && apk add --no-cache make python3 git && npm install -g yapi-cli --registry https://registry.npm.taobao.org
WORKDIR /my-yapi
CMD node vendors/server/app.js
