ARG version=2.7

FROM influxdb:${version}

# Labels for better maintainability
LABEL maintainer="VergissBerlin"
LABEL version="1.0.0"
LABEL description="InfluxDB Template for Railway"

# Set working directory
WORKDIR /app

# Expose ports
EXPOSE 8086

# Start command
ENTRYPOINT ["influxd"]
CMD ["--http-bind-address", ":8086"]
