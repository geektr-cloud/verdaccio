#!/usr/bin/env bash

docker build \
  --tag "geektr-cloud/verdaccio:latest" \
  --compress \
  .

tee <<EOF
=========================
docker push geektr-cloud/verdaccio
=========================
EOF
