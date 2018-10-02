FROM ruby:2.5.1-alpine3.7@sha256:7c8a3d6cb7bbbc360acce07f16f579eb4832adc2fda1da6d81f2abe7254a0f5e

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV APIARYIO_VERSION 0.11.1

RUN apk add --no-cache --virtual build-dependencies make gcc g++ && \
  gem install apiaryio:${APIARYIO_VERSION} --no-doc --no-format-exec && \
  mkdir -p /usr/src/app && \
  apk del build-dependencies

WORKDIR /usr/src/app
