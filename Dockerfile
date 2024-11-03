FROM node:18.20.2-alpine3.19

WORKDIR /home/node/app

COPY . .

RUN apk add --no-cache ffmpeg yarn python3 make g++ gcc && \
    yarn install

CMD ["node", "main.js"]