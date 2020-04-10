if [ $1 == "arm64" ]
then
  arch="armv8"
else
  arch="amd64"
fi

docker build --build-arg arch=$arch -t docker.io/iinfinity/clash:$1 .
docker tag docker.io/iinfinity/clash:$1 docker.io/iinfinity/clash:latest
docker push docker.io/iinfinity/clash:$1
