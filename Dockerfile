FROM alpine:3.13
RUN apk add autoconf automake autoconf-archive
ADD entry.sh /

VOLUME /src
CMD ["/entry.sh"]
