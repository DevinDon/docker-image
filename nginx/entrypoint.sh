#!/usr/bin/env sh

# link access log to stdout
ln -sf /dev/stdout /var/log/nginx/access.log
# link error log to stderr
ln -sf /dev/stderr /var/log/nginx/error.log

# start nginx
nginx && echo 'nginx started'

exec /notify.sh
