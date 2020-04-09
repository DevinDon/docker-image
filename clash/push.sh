rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/clash iinfinity/clash:$1
docker manifest push --purge iinfinity/clash:latest
