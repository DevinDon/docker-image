rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/dns \
  iinfinity/dns:arm64 \
  iinfinity/dns:amd64
docker manifest push --purge iinfinity/dns:latest
