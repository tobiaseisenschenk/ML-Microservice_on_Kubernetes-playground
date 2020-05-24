#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`
# Create dockerpath
# dockerpath=tje512/ml-api
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
# Push image to a docker repository
docker push tje512/ml-api
