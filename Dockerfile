FROM ruby:2.5.1-alpine3.7@sha256:5c2c66e70bfbb3f08d67e1335f555ccf69f6e3bcbf418a7b2fe3abf31d330ff2

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV APIARYIO_VERSION 0.11.1

RUN apk add --no-cache --virtual build-dependencies make gcc g++ && \
  gem install apiaryio:${APIARYIO_VERSION} --no-doc --no-format-exec && \
  mkdir -p /usr/src/app && \
  apk del build-dependencies

WORKDIR /usr/src/app
