docker build -t docker.io/iinfinity/nginx:$1 .
docker tag docker.io/iinfinity/nginx:$1 docker.io/iinfinity/nginx:latest
docker push docker.io/iinfinity/nginx:$1
