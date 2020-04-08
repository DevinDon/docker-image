rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/centos iinfinity/centos:$1
docker manifest push --purge iinfinity/centos:latest
