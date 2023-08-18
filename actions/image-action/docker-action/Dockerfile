ARG btag

FROM ghcr.io/nwchemex-ci-test/base_parallelzone:$btag

COPY build.sh /build.sh

RUN ["chmod", "+x", "/build.sh"]

ARG env1
ARG env2

ENV e_env1=$env1
ENV e_env2=$env2
ENTRYPOINT ["/build.sh"]
