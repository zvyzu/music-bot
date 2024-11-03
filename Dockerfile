FROM node:lts-alpine3.20

RUN apk add --no-cache ffmpeg yarn

WORKDIR /home/node/app

COPY * ./home/node/app

RUN yarn install

CMD ["node", "main.js"]