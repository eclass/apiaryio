FROM ruby:2.5.1-alpine3.7@sha256:f0e78baf2379e4ab63c097c666cd0a2b2e4b539bd1e9cf44689cc3cc37bf0324

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV APIARYIO_VERSION 0.11.1

RUN apk add --no-cache --virtual build-dependencies make gcc g++ && \
  gem install apiaryio:${APIARYIO_VERSION} --no-doc --no-format-exec && \
  mkdir -p /usr/src/app && \
  apk del build-dependencies

WORKDIR /usr/src/app
