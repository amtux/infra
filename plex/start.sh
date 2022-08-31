#!/bin/sh
set -eux
docker compose -f plex.yml up -d
