#!/usr/bin/env sh
# $0 is a script name,
# $1, $2, $3 etc are passed arguments
# $1 is our command
CMD=$1

# Handle Command
case "$CMD" in
  "dev" )
    export NODE_ENV=development
    su - user -c "npm install"
    exec gosu user npm run dev
    ;;

  "start" )
    export NODE_ENV=production
    exec gosu user npm start
    ;;

  "bundle" )
    export NODE_ENV=production
    exec gosu user node .
    ;;

   * )
    exec gosu user $CMD ${@:2}
    ;;
esac
