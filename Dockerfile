FROM verdaccio/verdaccio:4

USER root

ENV NODE_ENV=production

RUN yarn install && yarn add verdaccio-gitlab verdaccio-s3-storage

USER $VERDACCIO_USER_UID
