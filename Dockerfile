FROM verdaccio/verdaccio:latest

RUN yarn add verdaccio-gitlab

USER $VERDACCIO_USER_UID
