arch=$1
image=$2

# Build, tag & push image
docker build -t iinfinity/$image:$arch .
docker tag iinfinity/$image:$arch iinfinity/$image:latest
docker push iinfinity/$image:$arch

# Clear manifest cache
rm -rf ~/.docker/manifests/*

# Create manifest
docker manifest create iinfinity/$image \
  iinfinity/$image:arm64 \
  iinfinity/$image:amd64

# Push manifest
docker manifest push --purge iinfinity/$image:latest
