FROM node:slim

RUN npm install -g yarn

ENTRYPOINT ["/usr/local/bin/yarn"]
