#!/bin/sh -l

gcc_version="$(gcc --version | grep -i gcc)"
gcc_version="${gcc_version##* }"

echo "In the base image container"
cat /etc/issue
echo "gcc_version=${gcc_version}" >> $GITHUB_OUTPUT
