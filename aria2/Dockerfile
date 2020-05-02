FROM iinfinity/alpine

COPY [ "./config", "/config" ]
COPY [ "./entrypoint.sh", "/entrypoint.sh" ]

RUN apk add aria2 --no-cache

USER user

ENTRYPOINT [ "/entrypoint.sh" ]
