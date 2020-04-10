rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/rust \
  iinfinity/rust:arm64 \
  iinfinity/rust:amd64
docker manifest push --purge iinfinity/rust:latest
