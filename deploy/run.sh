#!/usr/bin/env bash

docker run \
    --rm \
    -v $PWD/output:/output \
    --name arc-theme-builder \
    arc-theme-builder-i
