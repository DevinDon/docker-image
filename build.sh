platform=`uname -i`
arch="amd64"

if [ platform = "x86_64" ]
then
  arch="amd64"
fi

cd alpine && sh build.sh $arch && \
cd ../aria2 && sh build.sh $arch && \
cd ../centos && sh build.sh $arch && \
cd ../gcc && sh build.sh $arch && \
cd ../java && sh build.sh $arch && \
cd ../nginx && sh build.sh $arch && \
cd ../node && sh build.sh $arch && \
cd ../python && sh build.sh $arch && \
cd ../rust && sh build.sh $arch && \
cd ../storage && sh build.sh $arch && \
cd .. && sh manifest.sh $arch
