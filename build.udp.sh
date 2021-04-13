#!/usr/bin/env bash

sudo podman build \
  -f Dockerfile.udp \
  -t quay.io/freedomben/echo-server-udp:latest \
  -t quay.io/freedomben/echo-server-udp:1.0 \
  .
