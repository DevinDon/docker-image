FROM alpine
COPY [ "./etc", "/etc" ]
RUN apk update && apk upgrade
RUN addgroup -S app && adduser app -D -G app
USER root
