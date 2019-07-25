FROM alpine:3.10
COPY ["./etc", "/etc"]
RUN apk update && apk upgrade
RUN apk add rust
ENTRYPOINT [ "uanme", "-a" ]
