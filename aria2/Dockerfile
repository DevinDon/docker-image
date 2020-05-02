FROM iinfinity/alpine

RUN apk add aria2 --no-cache

COPY [ "./config", "/config" ]

EXPOSE 6800 6801

COPY [ "./entrypoint.sh", "/entrypoint.sh" ]
RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
