#!/usr/bin/env bash

sudo podman build \
  -t docker.io/freedomben/echo-server:latest \
  -t docker.io/freedomben/echo-server:1.0 \
  -t quay.io/freedomben/echo-server:latest \
  -t quay.io/freedomben/echo-server:1.0 \
  .
