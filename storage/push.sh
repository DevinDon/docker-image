rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/storage iinfinity/storage:$1
docker manifest push --purge iinfinity/storage:latest
