FROM iinfinity/nginx
COPY [ "./app", "/app" ]
RUN apk add aria2
COPY [ "./config", "/config" ]
RUN apk add openrc
ENTRYPOINT start-stop-daemon --start --background sh /etc/daemon.sh && aria2c --conf-path=/config/aria2.conf
