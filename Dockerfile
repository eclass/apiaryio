FROM ruby:2.5.1-alpine3.7@sha256:75f6c465aad5567085564e7dad66a3b6beaf8bda275f13b131c05940c17ec5bd

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV APIARYIO_VERSION 0.11.1

RUN apk add --no-cache --virtual build-dependencies make gcc g++ && \
  gem install apiaryio:${APIARYIO_VERSION} --no-doc --no-format-exec && \
  mkdir -p /usr/src/app && \
  apk del build-dependencies

WORKDIR /usr/src/app
