rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/dns iinfinity/dns:$1
docker manifest push --purge iinfinity/dns:latest
