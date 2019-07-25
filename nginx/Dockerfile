FROM nginx
WORKDIR /app
COPY ["./etc", "/etc"]
RUN apt update && apt upgrade -y
COPY ["./app", "."]
ENTRYPOINT sh /etc/daemon.sh
