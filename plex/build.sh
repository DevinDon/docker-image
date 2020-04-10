docker build -t docker.io/iinfinity/plex:$1 .
docker push docker.io/iinfinity/plex:$1

rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/plex iinfinity/plex:$1
docker manifest push --purge iinfinity/plex:latest
