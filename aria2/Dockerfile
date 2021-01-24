FROM iinfinity/alpine

RUN apk add --no-cache aria2

COPY [ "./config", "/config" ]

COPY [ "./entrypoint.sh", "/entrypoint.sh" ]

ENTRYPOINT [ "/entrypoint.sh" ]
