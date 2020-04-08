rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/gcc iinfinity/gcc:$1
docker manifest push --purge iinfinity/gcc:latest
