FROM verdaccio/verdaccio:4

USER root

ENV NODE_ENV=production

RUN apk --no-cache add gettext

RUN yarn add verdaccio-gitlab-oauth verdaccio-aws-s3-storage && \
  rm -rf node_modules && \
  yarn workspaces focus --production && \
  yarn cache clean --all

RUN sed -i \
  -e 's/#header--button-login/#header--button-login, [data-testid=header--button-login]/' \
  -e 's/#header--button-logout/#header--button-logout, [data-testid=header--button-logout]/' \
  /opt/verdaccio/node_modules/verdaccio-gitlab-oauth/dist/public/verdaccio-4.js

ADD ./logo.svg /opt/verdaccio/node_modules/@verdaccio/ui-theme/static/
ADD ./wrapper.sh /

CMD [ "/wrapper.sh" ]
