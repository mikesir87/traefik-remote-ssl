FROM traefik:alpine
RUN apk add --no-cache git
COPY ssl-entrypoint.sh /ssl-entrypoint.sh
ENTRYPOINT ["/ssl-entrypoint.sh"]
COPY traefik.toml /etc/traefik/traefik.toml
