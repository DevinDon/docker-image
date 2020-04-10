docker build -t docker.io/iinfinity/aria2:$1 .
docker tag docker.io/iinfinity/aria2:$1 docker.io/iinfinity/aria2:latest
docker push docker.io/iinfinity/aria2:$1
