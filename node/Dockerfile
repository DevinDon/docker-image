FROM iinfinity/alpine

RUN apk add --no-cache bash npm
RUN npm config set unsafe-perm true
RUN npm i -g npm
# RUN npm config set registry https://registry.npm.taobao.org

WORKDIR ${WORKSPACE}

COPY [ "./entrypoint.sh", "/entrypoint.sh" ]
RUN chmod +x /entrypoint.sh

EXPOSE 8080

ENTRYPOINT [ "/entrypoint.sh" ]
