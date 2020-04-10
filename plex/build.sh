#!/bin/bash

if [ $1 == "arm64" ]
then
  arch="aarch64"
  platform="aarch64"
else
  arch="amd64"
  platform="x86_64"
fi

echo $1 $arch $platform

docker build \
  --build-arg S6_OVERLAY_ARCH=$arch \
  --build-arg PLEX_BUILD=linux-$platform \
  -t docker.io/iinfinity/plex:$1 .
docker push docker.io/iinfinity/plex:$1

rm -rf ~/.docker/manifests/*
docker manifest create iinfinity/plex iinfinity/plex:$1
docker manifest push --purge iinfinity/plex:latest
