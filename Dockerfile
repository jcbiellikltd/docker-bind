FROM alpine:latest

RUN set -xe \
	&& apk add --update --no-progress bind \
	&& rm -rf /var/cache/apk/*

EXPOSE 53/tcp 53/udp

VOLUME ["/etc/bind", "/var/lib/bind"]

CMD ["/usr/sbin/named", "-f", "-g"]
