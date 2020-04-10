docker build -t docker.io/iinfinity/java:$1 .
docker tag docker.io/iinfinity/java:$1 docker.io/iinfinity/java:latest
docker push docker.io/iinfinity/java:$1
