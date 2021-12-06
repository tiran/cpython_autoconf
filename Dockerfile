FROM docker.io/library/alpine:3.15
RUN apk add autoconf automake autoconf-archive libtool pkgconfig
ADD entry.sh /

VOLUME /src
CMD ["/entry.sh"]
