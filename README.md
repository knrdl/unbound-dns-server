# Unbound DNS Server

Unbound standalone DNS server using root resolvers

Docker Compose:

```yaml
version: '2.4'

services:
  unbound:
    image: ghcr.io/knrdl/unbound-dns-server
    ports:
      - "53:53/tcp"
      - "53:53/udp"
    mem_limit: 150m
```

Test: `$ dig @192.168.X.X example.org` (192.168.X.X = IP addr of your dns server host)
