# FROM node:lts-alpine
FROM node:lts
WORKDIR /usr/src/app 

COPY . .

RUN rm -Rf node_modules \
    && npm i \
    && chown -R node:node /usr/src/app

USER node

EXPOSE 3000

CMD ["bash","-c", "npm install && npm run dev && npm run dev"]
