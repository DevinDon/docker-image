#!/bin/bash

# Push manifest information

cd alpine && bash manifest.sh \
&& cd ../clash && bash manifest.sh \
&& cd ../nginx && bash manifest.sh \
&& cd ../aria2 && bash manifest.sh \
&& cd ../centos && bash manifest.sh \
&& cd ../gcc && bash manifest.sh \
&& cd ../java && bash manifest.sh \
&& cd ../node && bash manifest.sh \
&& cd ../minecraft && bash manifest.sh \
&& cd ../python && bash manifest.sh \
&& cd ../rust && bash manifest.sh \
&& cd ../storage && bash manifest.sh \
&& cd ..
