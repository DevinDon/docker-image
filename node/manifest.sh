rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/node \
  iinfinity/node:arm64 \
  iinfinity/node:amd64
docker manifest push --purge iinfinity/node:latest
