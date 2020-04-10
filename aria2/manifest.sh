rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/aria2 \
  iinfinity/aria2:arm64 \
  iinfinity/aria2:amd64
docker manifest push --purge iinfinity/aria2:latest
