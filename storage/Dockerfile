FROM iinfinity/alpine
WORKDIR /app
RUN apk add wget
RUN wget https://github.com/filebrowser/filebrowser/releases/download/v2.1.0/linux-arm64-filebrowser.tar.gz && tar -zxvf *
ENTRYPOINT [ "/app/filebrowser", "-a", "0.0.0.0", "-p", "80", "-r", "/storage" ]
