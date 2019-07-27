FROM iinfinity/alpine
WORKDIR /app
RUN apk add aria2 wget
COPY [ "./etc", "/etc" ]
RUN wget https://github.com/filebrowser/filebrowser/releases/download/v2.0.12/linux-amd64-filebrowser.tar.gz && tar -zxvf *
WORKDIR /storage
ENTRYPOINT [ "sh", "/etc/daemon.sh" ]
