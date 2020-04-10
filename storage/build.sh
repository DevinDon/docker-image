docker build --build-arg arch=$1 -t docker.io/iinfinity/storage:$1 .
docker push docker.io/iinfinity/storage:$1
