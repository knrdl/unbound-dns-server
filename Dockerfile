FROM alpine:3.23.3

RUN apk add --no-cache unbound

COPY server.conf /etc/unbound/unbound.conf.d/server.conf

ADD --chmod=666 https://www.internic.net/domain/named.root /root.hints

EXPOSE 53/tcp 53/udp

CMD unbound -dd -c /etc/unbound/unbound.conf.d/server.conf -v
