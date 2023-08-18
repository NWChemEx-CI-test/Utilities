#!/bin/sh -l

CR_PAT=$1
USER=$2
BASE_TAG=$3

cd /docker-action

#export CR_PAT=YOUR_TOKEN
echo $CR_PAT | docker login ghcr.io -u $USER --password-stdin

docker build -t docker-action --build-arg btag="$BASE_TAG" . && docker run docker-action echo "gcc_version=${gcc_version}" >> $GITHUB_OUTPUT
