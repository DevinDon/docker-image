docker push docker.io/iinfinity/python:$1

rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/python iinfinity/python:$1
docker manifest push --purge iinfinity/python:latest
