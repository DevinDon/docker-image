docker build -t docker.io/iinfinity/java:$1 .
docker push docker.io/iinfinity/java:$1

rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/java iinfinity/java:$1
docker manifest push --purge iinfinity/java:latest
