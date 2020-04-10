rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/gcc \
  iinfinity/gcc:arm64 \
  iinfinity/gcc:amd64
docker manifest push --purge iinfinity/gcc:latest
