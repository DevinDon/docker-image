FROM iinfinity/alpine
RUN apk add aria2
COPY [ "./etc", "/etc" ]
ENTRYPOINT [ "aria2c", "--conf-path=/etc/aria2/aria2.conf" ]
