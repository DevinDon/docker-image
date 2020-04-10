rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/minecraft \
  iinfinity/minecraft:arm64 \
  iinfinity/minecraft:amd64
docker manifest push --purge iinfinity/minecraft:latest
