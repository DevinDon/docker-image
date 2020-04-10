docker build -t docker.io/iinfinity/python:$1 .
docker tag docker.io/iinfinity/python:$1 docker.io/iinfinity/python:latest
docker push docker.io/iinfinity/python:$1
