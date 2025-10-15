FROM alpine:3.22.2

RUN apk add --no-cache unbound

COPY server.conf /etc/unbound/unbound.conf.d/server.conf

ADD --chmod=444 https://www.internic.net/domain/named.root /var/lib/unbound/root.hints

EXPOSE 53/tcp 53/udp

CMD unbound -dd -c /etc/unbound/unbound.conf.d/server.conf -v
