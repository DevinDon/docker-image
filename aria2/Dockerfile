FROM iinfinity/alpine

RUN apk --no-cache add aria2

COPY [ "./config", "/config" ]

EXPOSE 6800 6801

COPY [ "./entrypoint.sh", "/entrypoint.sh" ]
RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
