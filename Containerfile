FROM otel/opentelemetry-collector-contrib:0.136.0

COPY otel-collector-config.yaml /etc/otelcol/config.yaml

EXPOSE 4317 4318 55679

ENTRYPOINT ["/otelcol-contrib"]

CMD ["--config", "/etc/otelcol/config.yaml"]
