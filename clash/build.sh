if [ $1="arm64" ]
then
  arch="armv8"
fi

docker build --build-arg arch=$arch -t docker.io/iinfinity/clash:$1 .
docker push docker.io/iinfinity/clash:$1
