docker manifest create -a iinfinity/alpine iinfinity/alpine:$1
docker manifest create -a iinfinity/gcc iinfinity/gcc:$1
docker manifest create -a iinfinity/java iinfinity/java:$1
docker manifest create -a iinfinity/nginx iinfinity/nginx:$1
docker manifest create -a iinfinity/node iinfinity/node:$1
docker manifest create -a iinfinity/python iinfinity/python:$1
docker manifest create -a iinfinity/rust iinfinity/rust:$1

docker manifest push iinfinity/alpine
docker manifest push iinfinity/gcc
docker manifest push iinfinity/java
docker manifest push iinfinity/nginx
docker manifest push iinfinity/node
docker manifest push iinfinity/python
docker manifest push iinfinity/rust
