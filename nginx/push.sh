rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/nginx iinfinity/nginx:$1
docker manifest push --purge iinfinity/nginx:latest
