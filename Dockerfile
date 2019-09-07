FROM ruby:2.6.0-alpine3.7@sha256:bf711d8b74518acf40fa4b71657ea2bcd0a3c8ec90568d50b9245c59a1bd0fa4

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV APIARYIO_VERSION 0.11.1

RUN apk add --no-cache --virtual build-dependencies make gcc g++ && \
  gem install apiaryio:${APIARYIO_VERSION} --no-doc --no-format-exec && \
  mkdir -p /usr/src/app && \
  apk del build-dependencies

WORKDIR /usr/src/app
