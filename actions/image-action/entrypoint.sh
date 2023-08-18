#!/bin/sh -l

CR_PAT=$1
USER=$2
BASE_TAG=$3
ENV1=$4
ENV2=$5

cd /docker-action

#export CR_PAT=YOUR_TOKEN
echo $CR_PAT | docker login ghcr.io -u $USER --password-stdin

docker build -t docker-action --build-arg btag="$BASE_TAG" . && docker run docker-action -e env1=$ENV1 -e env2=ENV2
