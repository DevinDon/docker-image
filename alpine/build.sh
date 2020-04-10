docker build -t docker.io/iinfinity/alpine:$1 .
docker tag docker.io/iinfinity/alpine:$1 docker.io/iinfinity/alpine:latest
docker push docker.io/iinfinity/alpine:$1
