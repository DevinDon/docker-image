rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/alpine \
  iinfinity/alpine:arm64 \
  iinfinity/alpine:amd64
docker manifest push --purge iinfinity/alpine:latest
