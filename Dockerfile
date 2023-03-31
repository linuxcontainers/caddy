FROM caddy:builder AS builder

RUN caddy-builder \
    github.com/caddyserver/cache-handler \
    github.com/mholt/caddy-dynamicdns

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
