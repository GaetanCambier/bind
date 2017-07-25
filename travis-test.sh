#!/bin/bash
set -e

if [ "$ARCH" == "amd64" ]; then
  # test image
  docker run -name ${DOCKERNAME}test $DOCKERNAME

  sleep 5

  docker logs ${DOCKERNAME}test
fi
