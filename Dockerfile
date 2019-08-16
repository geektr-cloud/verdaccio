FROM verdaccio/verdaccio:latest

USER root

RUN yarn add verdaccio-gitlab

USER $VERDACCIO_USER_UID
