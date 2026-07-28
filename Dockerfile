FROM docker.io/calciumion/new-api:v1.0.0-rc.22
ENV PORT=3000
EXPOSE 3000
ENTRYPOINT ["/new-api"]
