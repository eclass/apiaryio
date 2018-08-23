FROM ruby:2.5.1-alpine3.7@sha256:626e1f1daabe6bb3965b20479ee093da37757370469f8ebd9672fb9664651734

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV APIARYIO_VERSION 0.11.1

RUN apk add --no-cache --virtual build-dependencies make gcc g++ && \
  gem install apiaryio:${APIARYIO_VERSION} --no-doc --no-format-exec && \
  mkdir -p /usr/src/app && \
  apk del build-dependencies

WORKDIR /usr/src/app
