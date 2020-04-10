docker build -t docker.io/iinfinity/gcc:$1 .
docker tag docker.io/iinfinity/gcc:$1 docker.io/iinfinity/gcc:latest
docker push docker.io/iinfinity/gcc:$1
