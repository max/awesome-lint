FROM node:18-alpine

RUN apk add --no-cache \
  git \
  && rm -rf /var/cache/apk/*

RUN npm install -g awesome-lint

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
