FROM node:lts-alpine3.20

WORKDIR /home/node/app

COPY . .

RUN apk add --no-cache ffmpeg yarn python3 make g++ && \
    yarn install

CMD ["node", "main.js"]