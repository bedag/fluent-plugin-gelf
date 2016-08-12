#!/bin/bash

BUILD_ARGS=""
if [ ! -z ${http_proxy+x} ]; then BUILD_ARGS="${BUILD_ARGS} --build-arg http_proxy=${http_proxy}"; fi
if [ ! -z ${https_proxy+x} ]; then BUILD_ARGS="${BUILD_ARGS} --build-arg https_proxy=${https_proxy}"; fi
if [ ! -z ${HTTP_PROXY+x} ]; then BUILD_ARGS="${BUILD_ARGS} --build-arg HTTP_PROXY=${HTTP_PROXY}"; fi
if [ ! -z ${HTTPS_PROXY+x} ]; then BUILD_ARGS="${BUILD_ARGS} --build-arg HTTPS_PROXY=${HTTPS_PROXY}"; fi
if [ ! -z ${ALL_PROXY+x} ]; then BUILD_ARGS="${BUILD_ARGS} --build-arg ALL_PROXY=${ALL_PROXY}"; fi

docker build -t fluent-plugin-gelf-builder ${BUILD_ARGS} . && \
docker run --rm -v ${PWD}:/fluent-plugin-gelf fluent-plugin-gelf-builder
