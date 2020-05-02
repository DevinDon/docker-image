FROM iinfinity/alpine

ENV UID=1000
ENV GID=1000
ENV WORKSPACE=/app

RUN apk add bash npm && npm i -g npm

# RUN npm config set unsafe-perm true
# RUN npm config set registry https://registry.npm.taobao.org

RUN mkdir ${WORKSPACE} \
  && addgroup node \
  && adduser --disabled-password -s /bin/bash -G node node \
  && chown node:node ${WORKSPACE}

WORKDIR ${WORKSPACE}

USER ${UID}
