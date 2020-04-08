rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/minecraft iinfinity/minecraft:$1
docker manifest push --purge iinfinity/minecraft:latest
