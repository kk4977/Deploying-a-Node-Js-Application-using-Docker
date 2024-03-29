FROM node:21-alpine

WORKDIR /usr/src/app

COPY package*.json ./

USER root

RUN npm install


RUN adduser -D sivakumar

USER sivakumar

COPY . .

EXPOSE 3000

ENTRYPOINT [ "npm" ]

CMD [ "start" ]
