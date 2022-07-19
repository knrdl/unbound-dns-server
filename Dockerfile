FROM alpine

RUN apk add --no-cache unbound

COPY server.conf /etc/unbound/unbound.conf.d/server.conf

ADD https://www.internic.net/domain/named.root /var/lib/unbound/root.hints

RUN chmod a+r /var/lib/unbound/root.hints

EXPOSE 53/tcp 53/udp

CMD unbound -dd -c /etc/unbound/unbound.conf.d/server.conf -v
