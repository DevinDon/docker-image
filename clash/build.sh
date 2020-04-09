if [ $1="arm64" ]
then
  arch="armv8"
fi

docker build --build-arg arch=$arch -t docker.io/iinfinity/clash:$1 .
docker push docker.io/iinfinity/clash:$1

rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/clash iinfinity/clash:$1
docker manifest push --purge iinfinity/clash:latest
