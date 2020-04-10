rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/clash \
  iinfinity/clash:arm64 \
  iinfinity/clash:amd64
docker manifest push --purge iinfinity/clash:latest
