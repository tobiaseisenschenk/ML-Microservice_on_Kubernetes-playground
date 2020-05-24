#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub
dockerpath="tje512/ml-api"
# Run the Docker Hub container with kubernetes
kubectl run ml-api --image=$dockerpath --generator=run-pod/v1 --port=8000 --labels app=ml-api
# List kubernetes pods
kubectl get pods
# Forward the container port to a host
kubectl port-forward ml-api 8000:80
