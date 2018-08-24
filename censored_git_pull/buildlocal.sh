#!/bin/bash
if [ "$1" == "test" ]; then
  BUILDARCH="--amd64"
else
  BUILDARCH="--all"
fi
docker run --rm --privileged -v ~/.docker:/root/.docker -v $(pwd):/data \
  -v /var/run/docker.sock:/var/run/docker.sock homeassistant/amd64-builder \
  --addon "$BUILDARCH" -t /data
