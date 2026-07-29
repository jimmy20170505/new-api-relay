FROM docker.io/calciumion/new-api:v1.0.0-rc.22

ENV PORT=3000

EXPOSE 3000

# Neon adds channel_binding=require to copied connection strings. Some Go
# PostgreSQL drivers used by pinned New API releases do not understand that
# optional libpq parameter. Keep TLS enabled via sslmode=require and remove only
# the incompatible trailing option before starting the application.
ENTRYPOINT ["/bin/sh", "-c", "case \"$SQL_DSN\" in *'&channel_binding=require') export SQL_DSN=\"${SQL_DSN%&channel_binding=require}\" ;; esac; exec /new-api \"$@\"", "--"]
