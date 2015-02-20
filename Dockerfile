FROM node:latest

ENV HOME /root

RUN git clone https://github.com/redpelicans/dockerized-app.git /app

ENV APP_REVISION __HASH__

RUN \
  cd /app && \
  git checkout $APP_REVISION && \
  npm install 

ADD start.sh /start
WORKDIR /app
CMD ["bash", "/start"]

