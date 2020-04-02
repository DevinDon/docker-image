FROM iinfinity/alpine
RUN apk add nginx-mod-stream
WORKDIR /app
COPY [ "./etc", "/etc" ]
COPY [ "./app", "." ]
# RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log
ENTRYPOINT [ "sh", "/etc/daemon.sh" ]
