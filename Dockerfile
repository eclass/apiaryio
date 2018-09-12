FROM ruby:2.5.1-alpine3.7@sha256:637559ee73feadf715873a3102494f7e1a180549728b6db154a85f6a51ca2aea

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV APIARYIO_VERSION 0.11.1

RUN apk add --no-cache --virtual build-dependencies make gcc g++ && \
  gem install apiaryio:${APIARYIO_VERSION} --no-doc --no-format-exec && \
  mkdir -p /usr/src/app && \
  apk del build-dependencies

WORKDIR /usr/src/app
