FROM ruby:2.5.1-alpine3.7@sha256:c88ee0877e44f95dcf7cfaace673e1174c9e9e1e2fb32b1ce0f97979568a6fd7

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV APIARYIO_VERSION 0.11.1

RUN apk add --no-cache --virtual build-dependencies make gcc g++ && \
  gem install apiaryio:${APIARYIO_VERSION} --no-doc --no-format-exec && \
  mkdir -p /usr/src/app && \
  apk del build-dependencies

WORKDIR /usr/src/app
