#!/bin/sh -l

gcc_version="$(gcc --version | grep -i gcc)"
gcc_version="${gcc_version##* }"

echo "In the base image container"
cat /etc/issue
echo "env1 = " ${1}
echo "env2 = " ${2}
echo "::set-output name=gcc_version::${gcc_version}"
