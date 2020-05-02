FROM iinfinity/alpine
COPY [ "./config", "/config" ]
RUN apk add aria2
ENTRYPOINT aria2c --conf-path=/config/aria2.conf
