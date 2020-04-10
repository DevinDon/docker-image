docker build -t docker.io/iinfinity/rust:$1 .
docker tag docker.io/iinfinity/rust:$1 docker.io/iinfinity/rust:latest
docker push docker.io/iinfinity/rust:$1
