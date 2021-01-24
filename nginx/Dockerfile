FROM iinfinity/alpine

WORKDIR ${WORKSPACE}

RUN apk add --no-cache nginx-mod-stream inotify-tools

COPY [ "./etc", "/etc" ]
COPY [ "./app", "/app" ]

COPY [ "./entrypoint.sh", "/entrypoint.sh" ]
COPY [ "./notify.sh", "/notify.sh" ]

EXPOSE 80 443

ENTRYPOINT [ "/entrypoint.sh" ]
