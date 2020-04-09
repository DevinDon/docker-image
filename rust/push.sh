docker push docker.io/iinfinity/rust:$1

rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/rust iinfinity/rust:$1
docker manifest push --purge iinfinity/rust:latest
