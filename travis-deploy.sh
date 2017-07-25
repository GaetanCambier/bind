#!/bin/bash
set -e

#image="stefanscherer/whoami"
docker tag $DOCKERNAME "$image:linux-$ARCH-$TRAVIS_TAG"
docker push "$image:linux-$ARCH-$TRAVIS_TAG"

