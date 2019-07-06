FROM nginx
WORKDIR /app
COPY ["./etc", "/etc"]
RUN apt update && apt upgrade -y
COPY ["./app", "."]
CMD sh /etc/daemon.sh
