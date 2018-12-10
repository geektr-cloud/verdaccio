#!/usr/bin/env bash

docker build \
  --tag "geektrcloud/verdaccio:latest" \
  --compress \
  .

tee <<EOF
=========================
docker push geektrcloud/verdaccio
=========================
EOF
