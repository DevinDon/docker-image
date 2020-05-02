arch=$1
image=$2

# Switch arch
if [ $arch == "arm64" ]
then
  platform="armv8"
else
  platform="amd64"
fi

# Build, tag & push image
docker build --build-arg platform=$arch -t iinfinity/$image:$arch .
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
