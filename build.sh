#!/usr/bin/env bash

set -eu

REGISTRY=jakubroman/localtunnel-client

docker build -t $REGISTRY:latest .
docker push $REGISTRY:latest
