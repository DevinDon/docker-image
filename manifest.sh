rm -rf ~/.docker/manifests/*

docker manifest create iinfinity/alpine iinfinity/alpine:$1
docker manifest create iinfinity/aria2 iinfinity/aria2:$1
docker manifest create iinfinity/centos iinfinity/centos:$1
docker manifest create iinfinity/gcc iinfinity/gcc:$1
docker manifest create iinfinity/java iinfinity/java:$1
docker manifest create iinfinity/nginx iinfinity/nginx:$1
docker manifest create iinfinity/node iinfinity/node:$1
docker manifest create iinfinity/python iinfinity/python:$1
docker manifest create iinfinity/rust iinfinity/rust:$1
docker manifest create iinfinity/storage iinfinity/storage:$1

docker manifest push --purge iinfinity/alpine:latest
docker manifest push --purge iinfinity/aria2:latest
docker manifest push --purge iinfinity/centos:latest
docker manifest push --purge iinfinity/gcc:latest
docker manifest push --purge iinfinity/java:latest
docker manifest push --purge iinfinity/nginx:latest
docker manifest push --purge iinfinity/node:latest
docker manifest push --purge iinfinity/python:latest
docker manifest push --purge iinfinity/rust:latest
docker manifest push --purge iinfinity/storage:latest
