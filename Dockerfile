FROM node:10-slim
RUN npm install -g awesome-lint
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
