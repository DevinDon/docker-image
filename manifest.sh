docker manifest create iinfinity/alpine iinfinity/alpine:amd64
docker manifest create iinfinity/gcc iinfinity/gcc:amd64
docker manifest create iinfinity/nginx iinfinity/nginx:amd64
docker manifest create iinfinity/node iinfinity/node:amd64
docker manifest create iinfinity/rust iinfinity/rust:amd64

docker manifest push iinfinity/alpine
docker manifest push iinfinity/gcc
docker manifest push iinfinity/nginx
docker manifest push iinfinity/node
docker manifest push iinfinity/rust
