FROM node:latest

ENV HOME /root

RUN git clone __REPO__ /app

ENV APP_REVISION __HASH__

RUN \
  cd /app && \
  git checkout $APP_REVISION && \
  npm install 

ADD start.sh /start
WORKDIR /app
CMD ["bash", "/start"]

