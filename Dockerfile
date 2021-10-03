FROM docker.io/library/alpine:3.13
RUN apk add autoconf automake autoconf-archive pkgconfig
ADD entry.sh /

VOLUME /src
CMD ["/entry.sh"]
