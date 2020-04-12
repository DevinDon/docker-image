rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/plex \
  iinfinity/plex:arm64 \
  iinfinity/plex:amd64
docker manifest push --purge iinfinity/plex:latest
