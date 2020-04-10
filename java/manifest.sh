rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/java \
  iinfinity/java:arm64 \
  iinfinity/java:amd64
docker manifest push --purge iinfinity/java:latest
