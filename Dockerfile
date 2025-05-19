# Build stage
ARG version=2.7

# Base image
FROM influxdb:${version} as builder

# Labels for better maintainability
LABEL maintainer="VergissBerlin"
LABEL version="1.0.0"
LABEL description="InfluxDB Template for Railway"

# Create non-root user
RUN addgroup --system --gid 1001 influxdb && \
    adduser --system --uid 1001 --ingroup influxdb influxdb

# Set working directory
WORKDIR /app

# Health check
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \
    CMD curl -f http://localhost:8086/health || exit 1

# Switch user
USER influxdb

# Expose ports
EXPOSE 8086

# Start command
ENTRYPOINT ["influxd"]
CMD ["--http-bind-address", ":8086"]
