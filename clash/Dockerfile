FROM iinfinity/alpine
ARG arch
RUN echo ${arch}
WORKDIR /clash
RUN wget https://github.com/Dreamacro/clash/releases/download/v0.19.0/clash-linux-${arch}-v0.19.0.gz
RUN wget https://raw.githubusercontent.com/wp-statistics/GeoLite2-Country/master/GeoLite2-Country.mmdb.gz
RUN gzip *.gz -d . && mv clash* clash && chmod +x clash
RUN wget --no-check-certificate --quiet \
  -O config.yaml \
  --method GET \
  --timeout=0 \
  --header 'Cookie: __cfduid=d5aa1e7acde3e2a418016789c3436d7e61586401113; WHMCSCFHXBtEAKIyJ=ikd36di5m2htv5bparajfknjtb' \
  'https://portal.caipin.pro/modules/servers/V2raySocks/clash.php?sid=79108&token=KjKb9aPxs8QC'
ENTRYPOINT [ "./clash", "-d", "." ]
