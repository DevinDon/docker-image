if [ $1="arm64" ]
then
  arch="armv8"
fi

docker build -t docker.io/iinfinity/clash:$arch .
docker push docker.io/iinfinity/clash:$arch
