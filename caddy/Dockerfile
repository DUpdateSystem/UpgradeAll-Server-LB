FROM caddy:2-builder AS builder

RUN xcaddy build \
    --with github.com/caddyserver/replace-response \
    --with github.com/sillygod/cdp-cache

FROM caddy:2

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
ADD ./conf/* /etc/caddy/
WORKDIR /etc/caddy/
