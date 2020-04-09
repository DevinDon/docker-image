docker build --build-arg arch=$1 -t docker.io/iinfinity/storage:$1 .
docker push docker.io/iinfinity/storage:$1

rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/storage iinfinity/storage:$1
docker manifest push --purge iinfinity/storage:latest
