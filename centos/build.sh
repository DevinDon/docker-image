docker build -t docker.io/iinfinity/centos:$1 .
docker tag docker.io/iinfinity/centos:$1 docker.io/iinfinity/centos:latest
docker push docker.io/iinfinity/centos:$1
