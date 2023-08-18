ARG btag

FROM ghcr.io/nwchemex-ci-test/base_parallelzone:$btag

COPY build.sh /build.sh

RUN ["chmod", "+x", "/build.sh"]

ARG env1
ARG env2

ENTRYPOINT ["/build.sh"]
CMD ["${env1}","${env2}"]
