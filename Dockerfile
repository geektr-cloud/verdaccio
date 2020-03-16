FROM verdaccio/verdaccio:4

USER root

ENV NODE_ENV=production

RUN yarn install && yarn add verdaccio-gitlab-oauth verdaccio-aws-s3-storage
RUN sed -i \
  -e 's/#header--button-login/#header--button-login, [data-testid=header--button-login]/' \
  -e 's/#header--button-logout/#header--button-logout, [data-testid=header--button-logout]/' \
  /opt/verdaccio/node_modules/verdaccio-gitlab-oauth/dist/public/verdaccio-4.js

USER $VERDACCIO_USER_UID
