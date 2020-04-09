docker push docker.io/iinfinity/centos:$1

rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/centos iinfinity/centos:$1
docker manifest push --purge iinfinity/centos:latest
