docker manifest create -a iinfinity/alpine iinfinity/alpine:amd64
docker manifest create -a iinfinity/gcc iinfinity/gcc:amd64
docker manifest create -a iinfinity/nginx iinfinity/nginx:amd64
docker manifest create -a iinfinity/node iinfinity/node:amd64
docker manifest create -a iinfinity/rust iinfinity/rust:amd64

docker manifest push iinfinity/alpine
docker manifest push iinfinity/gcc
docker manifest push iinfinity/nginx
docker manifest push iinfinity/node
docker manifest push iinfinity/rust
