#!/usr/bin/env bash

set -e

CONTAINER_TAG=CompEcon2020Examples

docker build --quiet -t ${CONTAINER_TAG} --file binder/Dockerfile .
docker run -it --rm -p 8888:8888 ${CONTAINER_TAG}
