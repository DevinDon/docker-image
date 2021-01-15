FROM openjdk:8-buster

WORKDIR /usr/local
ENV PATH="/usr/local/rocketmq/bin:${PATH}"

RUN apt update \
  && apt install -y zip unzip bash

RUN wget -O rocketmq.zip https://mirror-hk.koddos.net/apache/rocketmq/4.8.0/rocketmq-all-4.8.0-bin-release.zip \
  && unzip rocketmq.zip \
  && mv rocketmq-all* rocketmq \
  && rm rocketmq.zip

RUN sed -i "s/^sh/bash/g" /usr/local/rocketmq/bin/runserver.sh \
  && sed -i "s/^sh/bash/g" /usr/local/rocketmq/bin/mqnamesrv \
  && sed -i "s/^sh/bash/g" /usr/local/rocketmq/bin/mqbroker

ENTRYPOINT [ "bash", "-c" ]

