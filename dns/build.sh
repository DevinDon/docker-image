docker build -t docker.io/iinfinity/dns:$1 .
docker tag docker.io/iinfinity/dns:$1 docker.io/iinfinity/dns:latest
docker push docker.io/iinfinity/dns:$1
