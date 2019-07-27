FROM iinfinity/alpine
WORKDIR /app
RUN apk add aria2 wget
COPY [ "./etc", "/etc" ]
RUN aria2c --conf-path=/etc/aria2/aria2.conf -D
RUN wget https://github.com/filebrowser/filebrowser/releases/download/v2.0.12/linux-amd64-filebrowser.tar.gz && tar -zxvf *
WORKDIR /storage
ENTRYPOINT [ "/app/filebrowser", "-a 0.0.0.0", "-p 80", "-r /storage" ]
