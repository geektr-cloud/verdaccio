FROM verdaccio/verdaccio:latest

USER root

RUN npm i verdaccio-gitlab verdaccio-s3-storage

USER $VERDACCIO_USER_UID
