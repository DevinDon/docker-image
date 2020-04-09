FROM iinfinity/alpine
ARG arch
WORKDIR /clash
RUN wget https://github.com/Dreamacro/clash/releases/download/v0.19.0/clash-linux-${arch}-v0.19.0.gz
RUN gzip *.gz -d . && mv clash* clash && chmod +x clash
COPY [ "config", "/clash/config" ]
ENTRYPOINT [ "/clash/clash", "-d", "/clash/config" ]
