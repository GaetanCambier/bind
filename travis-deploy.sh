#!/bin/bash
set -e

docker tag $DOCKERNAME "$IMAGE:linux-$ARCH-$TRAVIS_TAG"
docker push "$IMAGE:linux-$ARCH-$TRAVIS_TAG"

