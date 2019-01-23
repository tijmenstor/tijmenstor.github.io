FROM node:8-slim

RUN npm install -g http-server

WORKDIR /usr/src/app

COPY . .

EXPOSE 8080

CMD ["http-server", "."]
