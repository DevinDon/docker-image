docker build -t docker.io/iinfinity/gcc:$1 .
docker push docker.io/iinfinity/gcc:$1

rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/gcc iinfinity/gcc:$1
docker manifest push --purge iinfinity/gcc:latest
