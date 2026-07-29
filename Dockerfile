FROM docker.io/calciumion/new-api:v1.0.0-rc.22

ENV PORT=3000
COPY docker-entrypoint.sh /docker-entrypoint.sh
EXPOSE 3000
ENTRYPOINT ["/bin/sh", "/docker-entrypoint.sh"]
