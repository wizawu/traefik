FROM traefik:2.2.11 as intermedia
FROM alpine:3.11.3

COPY --from=intermedia /entrypoint.sh /entrypoint.sh
COPY script/ca-certificates.crt /etc/ssl/certs/
COPY dist/traefik /usr/bin/

EXPOSE 80
ENTRYPOINT ["/entrypoint.sh"]
CMD ["traefik"]
