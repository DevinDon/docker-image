FROM iinfinity/alpine

RUN apk --no-cache add aria2

COPY [ "./config", "/config" ]

RUN mkdir -p /data \
  && touch /data/aria2.session

COPY [ "./entrypoint.sh", "/entrypoint.sh" ]
RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
