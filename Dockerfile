FROM docker.io/library/alpine:3.13

LABEL org.opencontainers.image.base.name="docker.io/library/alpine:3.13"
LABEL org.opencontainers.image.authors="Christian Heimes"
LABEL org.opencontainers.image.url="https://quay.io/repository/tiran/cpython_autoconf"
LABEL org.opencontainers.image.title="autoconf 2.69 container for CPython"
LABEL org.opencontainers.image.description="Container image with autoconf 2.69 tools to regenerate Python's configure script."
LABEL org.opencontainers.image.usage="podman run --rm --pull=always -v $(pwd):/src:Z quay.io/tiran/cpython_autoconf:269"

RUN apk add autoconf automake autoconf-archive libtool pkgconfig
ADD entry.sh /

VOLUME /src
WORKDIR /src
CMD ["/entry.sh"]
