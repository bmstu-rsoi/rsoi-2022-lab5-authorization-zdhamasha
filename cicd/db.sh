#!/bin/bash

# deploy db 
helm upgrade --install \
    --set auth.postgresPassword=P@ssw0rd \
    --set image.tag=11.7.0-debian-10-r9 \
    --set resources.requests.cpu="100m" \
    --set resources.requests.memory="256Mi" \
    --set resources.limits.cpu="1000m" \
    --set persistence.size=5Gi \
    --set resources.limits.memory="1Gi" \
    --set postgresqlExtendedConf.max_connections="1000" \
    --namespace=zdhamasha \
    zdhamasha-postgresql \
    bitnami/postgresql \
    --version 11.6.2