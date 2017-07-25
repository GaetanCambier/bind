#!/bin/bash
set -e

if [ "$ARCH" == "amd64" ]; then
  # test image
  docker run -d -p 53:53 --name=${DOCKERNAME}test $DOCKERNAME

  sleep 5

  docker logs ${DOCKERNAME}test
fi
