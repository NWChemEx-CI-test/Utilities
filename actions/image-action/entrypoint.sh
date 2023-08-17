#!/bin/sh -l

echo "Hello $1"
cat /etc/issue
time=$(date)
echo "time=$" >> $GITHUB_OUTPUT
