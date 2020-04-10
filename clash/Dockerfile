FROM iinfinity/alpine
ARG arch
WORKDIR /clash
RUN wget https://github.com/Dreamacro/clash/releases/download/v0.19.0/clash-linux-${arch}-v0.19.0.gz -O clash-${arch}.gz \
  && gzip *.gz -d && mv clash* clash && chmod +x clash
WORKDIR /config
COPY [ "config", "/config" ]
RUN wget https://raw.githubusercontent.com/wp-statistics/GeoLite2-Country/master/GeoLite2-Country.mmdb.gz -O mmdb.gz \
  && gzip *.gz -d && mv *mmdb Country.mmdb
ENTRYPOINT [ "/clash/clash", "-d", "/config" ]
