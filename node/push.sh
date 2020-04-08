rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/node iinfinity/node:$1
docker manifest push --purge iinfinity/node:latest
