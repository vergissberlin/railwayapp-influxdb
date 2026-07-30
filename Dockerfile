ARG version=2.9

FROM influxdb:${version}

# Labels for better maintainability
LABEL maintainer="VergissBerlin"
LABEL description="InfluxDB Template for Railway"

# Railway ignores EXPOSE and routes traffic to the port named by $PORT.
# EXPOSE documents the local default, ENV PORT keeps that default reproducible.
ENV PORT=8086
EXPOSE 8086

# Translate Railway's $PORT into INFLUXD_HTTP_BIND_ADDRESS, then delegate to the
# upstream entrypoint so the automated DOCKER_INFLUXDB_INIT_* setup still runs.
COPY railway-entrypoint.sh /usr/local/bin/railway-entrypoint.sh
RUN chmod +x /usr/local/bin/railway-entrypoint.sh

ENTRYPOINT ["/usr/local/bin/railway-entrypoint.sh"]
CMD ["influxd"]
