FROM iinfinity/alpine
RUN apk add nginx
WORKDIR /app
COPY ["./etc", "/etc"]
COPY ["./app", "."]
ENTRYPOINT [ "sh", "/etc/daemon.sh" ]
