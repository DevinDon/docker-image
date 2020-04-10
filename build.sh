#!/bin/bash

platform=`uname -i`
arch="arm64"

if [ platform="x86_64" ]
then
  arch="amd64"
fi

# Build & push image

cd alpine && bash build.sh $arch \
&& cd ../clash && bash build.sh $arch \
&& cd ../nginx && bash build.sh $arch \
&& cd ../aria2 && bash build.sh $arch \
&& cd ../centos && bash build.sh $arch \
&& cd ../gcc && bash build.sh $arch \
&& cd ../java && bash build.sh $arch \
&& cd ../minecraft && bash build.sh $arch \
&& cd ../node && bash build.sh $arch \
&& cd ../python && bash build.sh $arch \
&& cd ../rust && bash build.sh $arch \
&& cd ../storage && bash build.sh $arch \
&& cd ..
