#!/bin/sh
set -eux

services="plex mediagrab yolo"
for svc in $services; do
  if ls "$svc"; then
    cd "$svc"
    docker-compose up -d
    cd ..
  fi
done
