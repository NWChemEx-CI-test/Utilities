#!/bin/sh -l

gcc_version="$(gcc --version | grep -i gcc)"
gcc_version="${gcc_version##* }"

echo "In the base image container"
cat /etc/issue
echo "env1 = " ${e_env1}
echo "env2 = " ${e_env2}
#echo "::set-output name=gcc_version::${gcc_version}"
echo "gcc_version=$gcc_version">>$env:GITHUB_OUTPUT
