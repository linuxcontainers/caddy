FROM caddy:builder AS builder

RUN caddy-builder \
    github.com/caddyserver/cache-handler \
    github.com/sillygod/cdp-cache \
    github.com/caddy-dns/cloudflare 

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
