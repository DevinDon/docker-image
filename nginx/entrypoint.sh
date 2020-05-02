#!/usr/bin/env sh
# # $0 is a script name,
# # $1, $2, $3 etc are passed arguments
# # $1 is our command
# CMD=$1

# case "$CMD" in
#   "dev" )
#     npm install
#     export NODE_ENV=development
#     exec npm run dev
#     ;;

#   "start" )
#     # we can modify files here, using ENV variables passed in
#     # "docker create" command. It can't be done during build process.
#     echo "db: $DATABASE_ADDRESS" >> /app/config.yml
#     export NODE_ENV=production
#     exec npm start
#     ;;

#    * )
#     # Run custom command. Thanks to this line we can still use
#     # "docker run our_image /bin/bash" and it will work
#     exec $CMD ${@:2}
#     ;;
# esac

# Link error log to stderr
# ln -sf /dev/stdout /var/log/nginx/access.log
ln -sf /dev/stderr /var/log/nginx/error.log

# Enable Nginx
nginx

exec gosu user inotifywait -e modify,move,create,delete -mr --timefmt '%d/%m/%y %H:%M' --format '%T %f %e' \
/etc/nginx/ | while read event; do
    echo "$event"
    nginx -s reload
done
