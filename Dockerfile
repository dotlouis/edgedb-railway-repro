# https://hub.docker.com/r/edgedb/edgedb
FROM edgedb/edgedb

# https://www.edgedb.com/docs/reference/environment
ENV EDGEDB_SERVER_SECURITY=insecure_dev_mode
# Railway's Postgres URL
ENV EDGEDB_SERVER_BACKEND_DSN_ENV=DATABASE_URL
# Railway needs to bind 0.0.0.0 to work
ENV EDGEDB_SERVER_BIND_ADDRESS=0.0.0.0 

ENV EDGEDB_SERVER_ADMIN_UI=enabled

ENV EDGEDB_SERVER_PASSWORD=EDGEDB_SERVER_PASSWORD
ENV EDGEDB_SERVER_USER=EDGEDB_SERVER_USER
