FROM iinfinity/alpine
RUN apk add nginx-mod-stream
WORKDIR /app
COPY ["./etc", "/etc"]
COPY ["./app", "."]
ENTRYPOINT [ "sh", "/etc/daemon.sh" ]
