FROM ruby:2.5.1-alpine3.7@sha256:20503940e1eda342f059c1bbdf55e87a2a2338a4b2b6cd0a7b183e712615e65f

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV APIARYIO_VERSION 0.11.1

RUN apk add --no-cache --virtual build-dependencies make gcc g++ && \
  gem install apiaryio:${APIARYIO_VERSION} --no-doc --no-format-exec && \
  mkdir -p /usr/src/app && \
  apk del build-dependencies

WORKDIR /usr/src/app
