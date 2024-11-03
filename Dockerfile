FROM node:18.20.2-alpine3.19

WORKDIR /home/node/app

COPY . .

RUN apk add --no-cache ffmpeg yarn python3 make g++ gcc autoconf automake libtool opus opus-dev && \
    yarn install

CMD ["node", "main.js"]