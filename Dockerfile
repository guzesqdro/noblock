FROM caddy:2.8.4-alpine

WORKDIR /srv

# Instalamos el módulo necesario para reescribir las rutas
RUN caddy add-package github.com/caddy-dns/cloudflare

COPY . /srv/
COPY Caddyfile /etc/caddy/Caddyfile

EXPOSE 80

CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile"]
