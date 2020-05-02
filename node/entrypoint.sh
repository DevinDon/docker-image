#!/usr/bin/env sh
# $0 is a script name,
# $1, $2, $3 etc are passed arguments
# $1 is our command
CMD=$1

# Change USER
su user

case "$CMD" in
  "dev" )
    npm install
    export NODE_ENV=development
    exec npm run dev
    ;;

  "start" )
    export NODE_ENV=production
    exec npm start
    ;;

  "bundle" )
    export NODE_ENV=production
    exec node .
    ;;

   * )
    exec $CMD ${@:2}
    ;;
esac
