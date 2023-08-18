#!/bin/bash -l

BASE_TAG=$1

cd /docker-action
docker build -t docker-action --build-arg btag="$BASE_TAG" . && docker run docker-action
