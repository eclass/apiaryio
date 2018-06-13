# apiaryio

[![dockeri.co](http://dockeri.co/image/lgatica/apiaryio)](https://hub.docker.com/r/lgatica/apiaryio/)

[![Build Status](https://travis-ci.org/lgaticaq/apiaryio.svg?branch=master)](https://travis-ci.org/lgaticaq/apiaryio)

> Docker Image with alpine linux and apiaryio

Supported tags and respective Dockerfile links

- 0.11.1, latest ([Dockerfile](https://github.com/lgaticaq/apiaryio/blob/master/Dockerfile))

```dockerfile
docker run --rm -it -v $PWD:/usr/src/app -e APIARY_API_KEY=$APIARY_API_KEY lgatica/apiaryio apiary publish --api-name="<API_NAME>" --path="/path/to/apiary.apib"
```

Example publish with gitlab ci

```yml
apiary:
  image: lgatica/apiaryio
  stage: deploy
  script:
    - apiary publish --api-name="<API_NAME>" --path="/path/to/apiary.apib"
  only:
    - master
  environment: production
```
