FROM ruby:2.5.1-alpine3.7@sha256:c572b9ab6d2458a83544964829d0f13c181a14a10cf23d9f0db5881b52ee4275

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV APIARYIO_VERSION 0.11.1

RUN apk add --no-cache --virtual build-dependencies make gcc g++ && \
  gem install apiaryio:${APIARYIO_VERSION} --no-doc --no-format-exec && \
  mkdir -p /usr/src/app && \
  apk del build-dependencies

WORKDIR /usr/src/app
