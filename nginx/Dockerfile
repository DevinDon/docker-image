FROM iinfinity/alpine

RUN apk add --no-cache nginx-mod-stream inotify-tools

WORKDIR /app
COPY [ "./etc", "/etc" ]
COPY [ "./app", "." ]

COPY [ "./entrypoint.sh", "/entrypoint.sh" ]
RUN chmod +x /entrypoint.sh

EXPOSE 80 443

ENTRYPOINT [ "/entrypoint.sh" ]
