FROM iinfinity/alpine
WORKDIR /app
RUN mkdir /storage && wget https://github.com/filebrowser/filebrowser/releases/download/v2.1.0/linux-amd64-filebrowser.tar.gz && tar -zxvf linux-amd64-filebrowser.tar.gz
ENTRYPOINT [ "/app/filebrowser", "-a", "0.0.0.0", "-p", "80", "-r", "/storage" ]
