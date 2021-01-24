#!/usr/bin/env sh

# create download dir
if [ ! -d "/data/download" ];then
  mkdir -p /data/download
  chown -R runner:runner /data/download
fi

# create data dir
if [ ! -d "/data/aria2" ];then
  mkdir -p /data/aria2
  chown -R runner:runner /data/aria2
fi

# create session file
if [ ! -f "/data/aria2/session" ];then
  touch /data/aria2/session
  chown -R runner:runner /data/aria2/session
fi

# enable aria2c
exec su-exec runner aria2c --conf-path=/config/aria2.conf
