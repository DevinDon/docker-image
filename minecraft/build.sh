docker build -t docker.io/iinfinity/minecraft:$1 .
docker tag docker.io/iinfinity/minecraft:$1 docker.io/iinfinity/minecraft:latest
docker push docker.io/iinfinity/minecraft:$1
