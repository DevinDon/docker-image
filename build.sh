platform=`uname -i`
arch="amd64"

if [ platform = "x86_64" ]
then
  arch="amd64"
fi

# Build image

cd alpine && sh build.sh $arch && \
cd ../nginx && sh build.sh $arch && \
cd ../aria2 && sh build.sh $arch && \
cd ../centos && sh build.sh $arch && \
cd ../gcc && sh build.sh $arch && \
cd ../java && sh build.sh $arch && \
cd ../minecraft && sh build.sh $arch && \
cd ../node && sh build.sh $arch && \
cd ../python && sh build.sh $arch && \
cd ../rust && sh build.sh $arch && \
cd ../storage && sh build.sh $arch && \
cd ..

# Push image

cd alpine && sh push.sh $arch && \
cd ../nginx && sh push.sh $arch && \
cd ../aria2 && sh push.sh $arch && \
cd ../centos && sh push.sh $arch && \
cd ../gcc && sh push.sh $arch && \
cd ../java && sh push.sh $arch && \
cd ../minecraft && sh push.sh $arch && \
cd ../node && sh push.sh $arch && \
cd ../python && sh push.sh $arch && \
cd ../rust && sh push.sh $arch && \
cd ../storage && sh push.sh $arch && \
cd ..
