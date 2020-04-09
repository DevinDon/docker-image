docker push docker.io/iinfinity/aria2:$1

rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/aria2 iinfinity/aria2:$1
docker manifest push --purge iinfinity/aria2:latest
