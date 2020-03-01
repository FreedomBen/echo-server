#!/usr/bin/env bash

sudo podman push --authfile ~/.docker/config.json \
  docker.io/freedomben/echo-server:latest

sudo podman push --authfile ~/.docker/config.json \
  docker.io/freedomben/echo-server:1.0

sudo podman push --authfile ~/.docker/config.json \
  quay.io/freedomben/echo-server:latest

sudo podman push --authfile ~/.docker/config.json \
  quay.io/freedomben/echo-server:1.0
