rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/storage \
  iinfinity/storage:arm64 \
  iinfinity/storage:amd64
docker manifest push --purge iinfinity/storage:latest
