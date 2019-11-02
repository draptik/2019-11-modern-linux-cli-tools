#!/bin/sh
CURRENT_CONTAINER="cli-tools-demo-ubuntu:1.0"

# TODO I need non-root privileges
docker run -it ${CURRENT_CONTAINER} /bin/bash
