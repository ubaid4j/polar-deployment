#!/bin/bash
declare -a microservices=("catalog-service:0.0.6-snapshot" "config-service:0.0.3-snapshot" "dispatcher-service:0.0.2-snapshot" "order-service:0.0.5-snapshot" "edge-service:0.0.4-snapshot")
for microservice in "${microservices[@]}"
do
  docker pull ghcr.io/ubaid4j/"$microservice"
done