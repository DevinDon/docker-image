rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/nginx \
  iinfinity/nginx:arm64 \
  iinfinity/nginx:amd64
docker manifest push --purge iinfinity/nginx:latest
