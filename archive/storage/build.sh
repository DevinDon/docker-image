docker build --build-arg arch=$1 -t docker.io/iinfinity/storage:$1 .
docker tag docker.io/iinfinity/storage:$1 docker.io/iinfinity/storage:latest
docker push docker.io/iinfinity/storage:$1
