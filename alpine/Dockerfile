FROM alpine:3.10
COPY ["./etc", "/etc"]
COPY ["./root", "/root"]
RUN apk update && apk upgrade
RUN apk add openrc openssh-server
COPY ["./etc", "/etc"]
RUN openrc boot && rc-update add sshd && service sshd start
