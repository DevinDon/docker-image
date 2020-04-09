docker push docker.io/iinfinity/nginx:$1

rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/nginx iinfinity/nginx:$1
docker manifest push --purge iinfinity/nginx:latest
