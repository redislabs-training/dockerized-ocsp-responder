## Build a new image

```
docker build --no-cache -t ocsp-responder .
```

## Tag a new image

```
docker tag ocsp-responder ghcr.io/redislabs-training/ocsp-responder/ocsp-responder:0.1.0
docker tag ocsp-responder ghcr.io/redislabs-training/ocsp-responder/ocsp-responder:latest
```

## Docker login

```
docker login docker.pkg.github.com -u ${GITHUB_USERNAME} -p ${GITHUB_TOKEN}
```

## Docker publish

```
docker push ghcr.io/redislabs-training/ocsp-responder/ocsp-responder --all-tags
```

## Package settings

Connect the container image to the repo.  This was already done so it should not need to be done again unless the tag changes.

https://github.com/orgs/redislabs-training/packages

In order for this to be used directly by anyone without a GH token it needs to be made public which is in the package settings.