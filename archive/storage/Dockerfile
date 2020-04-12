FROM iinfinity/alpine
ARG arch
WORKDIR /app
RUN mkdir /data
RUN wget https://github.com/filebrowser/filebrowser/releases/download/v2.1.0/linux-${arch}-filebrowser.tar.gz
RUN tar -zxvf *.tar.gz && chmod +x /app/filebrowser
COPY config.json /config/config.json
ENTRYPOINT [ "/app/filebrowser", "-c", "/config/config.json" ]
