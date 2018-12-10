#!/usr/bin/env bash
docker run -it --rm --name verdaccio -p 80:4873 \
  -v "$PWD/config.yaml":/verdaccio/conf/config.yaml \
  geektrcloud/verdaccio:latest
