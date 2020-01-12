FROM iinfinity/alpine
RUN apk add dnsmasq
COPY etc/dnsmasq.conf /etc/dnsmasq.conf
COPY etc/dns/ /etc/dns/
ENTRYPOINT [ "dnsmasq" ]
