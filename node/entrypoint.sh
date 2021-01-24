#!/usr/bin/env sh
CMD=$1

# Handle Command
case "$CMD" in
  "dev" )
    export NODE_ENV=development
    su-exec runner "npm ci"
    exec su-exec runner npm run start:dev
    ;;

  "start" )
    export NODE_ENV=production
    exec su-exec runner npm start
    ;;

  "bundle" )
    export NODE_ENV=production
    exec su-exec runner node .
    ;;

   * )
    exec su-exec runner $CMD ${@:2}
    ;;
esac
