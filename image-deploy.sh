# Build a new image
docker build --no-cache -t ocsp-responder .

# Tag a new image
docker tag ocsp-responder ghcr.io/redislabs-training/ocsp-responder/ocsp-responder:0.1.0
docker tag ocsp-responder ghcr.io/redislabs-training/ocsp-responder/ocsp-responder:latest

# Docker login
docker login docker.pkg.github.com -u ${GITHUB_USERNAME} -p ${GITHUB_TOKEN}

# Docker publish
docker push ghcr.io/redislabs-training/ocsp-responder/ocsp-responder --all-tags