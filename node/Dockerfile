FROM iinfinity/alpine
RUN apk add bash npm && npm i -g npm
# RUN npm config set unsafe-perm true
# RUN npm config set registry https://registry.npm.taobao.org
RUN mkdir /app \
  && adduser --disabled-password -s /bin/bash -G root node \
  && chown node:node /app
# WORKDIR /app
# USER node
