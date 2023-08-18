ARG btag

FROM ghcr.io/nwchemex-ci-test/base_parallelzone:$btag

COPY entrypoint.sh /entrypoint.sh

RUN ["chmod", "+x", "/entrypoint.sh"]

ENTRYPOINT ["/entrypoint.sh"]
