From ubuntu:latest

RUN    apt-get update \
        && DEBIAN_FRONTEND=noninteractive apt-get install -y \
                libboost-all-dev \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*
