FROM node:10-alpine

LABEL version="1.0.0"
LABEL repository="http://github.com/max/awesome-lint"
LABEL homepage="http://github.com/max/awesome-lint"
LABEL maintainer="Max Schoening <max@max.wtf>"

LABEL "com.github.actions.name"="GitHub Action for awesome-lint"
LABEL "com.github.actions.description"="Wraps the awesome-lint tool to check awesome lists"
LABEL "com.github.actions.icon"="play"
LABEL "com.github.actions.color"="purple"

RUN apk add --no-cache \
  git \
  && rm -rf /var/cache/apk/*

RUN npm install -g awesome-lint

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
