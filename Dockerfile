# Start from the official Prometheus base image
FROM prom/prometheus:latest

# Set working directory
WORKDIR /etc/prometheus

# Copy your custom Prometheus config
COPY prometheus.yml .

# Optional: Copy alert rules, recording rules, etc.
# COPY rules/ ./rules/

# Expose the Prometheus web port
EXPOSE 9090

# Entrypoint already defined in base image, no need to override unless you need customization
