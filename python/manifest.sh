rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/python \
  iinfinity/python:arm64 \
  iinfinity/python:amd64
docker manifest push --purge iinfinity/python:latest
