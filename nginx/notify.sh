#!/usr/bin/env sh

while inotifywait -rq -e modify,move,create,delete --timefmt '%d/%m/%y %H:%M' --format '%T %f %e' /etc/nginx
do
  echo 'nginx will be reload after 1s'
  sleep 1
  nginx -s reload
done
