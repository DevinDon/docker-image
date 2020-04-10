#!/bin/bash
full=`uname -a`

if [[ "$full" =~ .*aarch64.* ]]
then
  echo "arm64"
elif [[ "$full" =~ .*x86_64.* ]]
then
  echo "amd64"
else
  echo "unknown"
fi
