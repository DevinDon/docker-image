FROM alpine:3.10
COPY ["./etc", "/etc"]
RUN apk update && apk upgrade
RUN addgroup -S app && adduser app -D -G app
USER root
