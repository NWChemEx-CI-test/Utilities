#!/bin/sh -l

CR_PAT=$1
USER=$2
BASE_TAG=$3
ENV1=$4
ENV2=$5

echo "In the outer container:"
echo $ENV1, $ENV2

cd /docker-action

#export CR_PAT=YOUR_TOKEN
echo $CR_PAT | docker login ghcr.io -u $USER --password-stdin

docker build -t docker-action --build-arg btag="$BASE_TAG" --build-arg env1="$ENV1" --build-arg env2="$ENV2" . && docker run docker-action echo "gcc_version=${gcc_version}">>$GITHUB_OUTPUT
