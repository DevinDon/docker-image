FROM iinfinity/nginx
COPY [ "./app", "/app" ]
RUN apk add aria2
COPY [ "./etc", "/etc" ]
RUN apk add openrc
ENTRYPOINT start-stop-daemon --start --background sh /etc/daemon.sh && aria2c --conf-path=/etc/aria2/aria2.conf
