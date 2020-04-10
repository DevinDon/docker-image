docker build -t docker.io/iinfinity/node:$1 .
docker tag docker.io/iinfinity/node:$1 docker.io/iinfinity/node:latest
docker push docker.io/iinfinity/node:$1
