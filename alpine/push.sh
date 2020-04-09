docker push docker.io/iinfinity/alpine:$1

rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/alpine iinfinity/alpine:$1
docker manifest push --purge iinfinity/alpine:latest
