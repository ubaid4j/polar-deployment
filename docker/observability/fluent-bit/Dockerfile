FROM grafana/fluent-bit-plugin-loki:latest
COPY wget /bin/wget
COPY bash /bin/sh
COPY bash /bin/bash

#HEALTHCHECK CMD wget -O /dev/null http://127.0.0.1:2020/api/v1/health