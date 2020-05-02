FROM iinfinity/alpine

RUN apk add aria2 --no-cache

COPY [ "./config", "/config" ]
COPY [ "./entrypoint.sh", "/entrypoint.sh" ]
RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
