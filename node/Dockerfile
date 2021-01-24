FROM iinfinity/alpine

WORKDIR ${WORKSPACE}

ENV NPM_CONFIG_REGISTRY=https://registry.npm.taobao.org

RUN apk add --no-cache npm; \
  npm i -g npm@latest;

COPY [ "./entrypoint.sh", "/entrypoint.sh" ]

ENTRYPOINT [ "/entrypoint.sh" ]
