FROM node:lts-alpine3.20

VOLUME /home/node/app

WORKDIR /home/node/app

COPY . ./home/node/app

RUN apk add ffmpeg yarn python3 make && \
    cd /home/node/app && yarn install

CMD ["node", "main.js"]