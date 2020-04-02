while true
do

if [ ! -f "/var/run/nginx.pid" ]
then
  echo $(date +%T%n%F)" Restart nginx Services " && nginx –g 'daemon off;'
else
  sleep 120
fi

sleep 10

done
