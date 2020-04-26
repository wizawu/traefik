FROM alpine:3.11.3
COPY script/ca-certificates.crt /etc/ssl/certs/
COPY dist/traefik /usr/bin/
EXPOSE 80
ENTRYPOINT ["/entrypoint.sh"]
CMD ["traefik"]
