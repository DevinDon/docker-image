rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/centos \
  iinfinity/centos:arm64 \
  iinfinity/centos:amd64
docker manifest push --purge iinfinity/centos:latest
