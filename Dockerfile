# FROM node:lts-alpine
FROM node:lts

WORKDIR /usr/src/app 

COPY package*.json ./
RUN  rm -Rf node_modules && npm i && chown -R node:node /usr/src/app/node_modules
COPY . .
USER node
EXPOSE 3000
CMD ["npm","run","dev"]
