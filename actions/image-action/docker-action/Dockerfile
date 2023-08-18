ARG btag

FROM ghcr.io/nwchemex-ci-test/base_parallelzone:$btag

COPY build.sh /build.sh

RUN ["chmod", "+x", "/entrypoint.sh"]

ENTRYPOINT ["/build.sh"]
