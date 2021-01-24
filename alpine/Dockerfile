FROM alpine:3.13

ENV WORKSPACE=/app

# change mirror
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories; \
  apk update --no-cache; \
  apk upgrade --no-cache;

# add user runner
RUN mkdir ${WORKSPACE}; \
  adduser runner --disabled-password -s /bin/sh -u 1000; \
  chown runner:runner ${WORKSPACE};

# install su-exec
RUN apk add --no-cache su-exec
