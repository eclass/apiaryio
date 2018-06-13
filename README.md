# apiaryio

[![dockeri.co](http://dockeri.co/image/lgatica/apiaryio)](https://hub.docker.com/r/lgatica/apiaryio/)

[![Build Status](https://travis-ci.org/lgaticaq/apiaryio.svg?branch=master)](https://travis-ci.org/lgaticaq/apiaryio)

> Docker Image with alpine linux and apiaryio

Supported tags and respective Dockerfile links

- 0.11.1, latest ([Dockerfile](https://github.com/lgaticaq/apiaryio/blob/master/Dockerfile))

```dockerfile
docker run --rm -v $PWD:/usr/src/app lgatica/apiaryio:latest apiaryio --provider=heroku --app=your-app --api-key=your-api-key
```

Example publish with gitlab ci

```yml
apiary:
  image: lgatica/apiaryio
  stage: deploy
  script:
    - publish --api-name="$APIARY_API_NAME" --path="/path/to/apiary.apib"
  only:
    - master
  environment: production
```
