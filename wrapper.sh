#!/bin/sh

SEC_ENV="${VERDACCIO_SECRET_ENV:-/run/secrets/verdaccio_env}"

export $(grep -v '^#' $SEC_ENV | xargs -d '\n')

envsubst < /config.yaml > /verdaccio/conf/config.yaml

/bin/su -s "/bin/sh" \
  -c "$VERDACCIO_APPDIR/bin/verdaccio --config /verdaccio/conf/config.yaml --listen $VERDACCIO_PROTOCOL://0.0.0.0:$VERDACCIO_PORT" \
  verdaccio
