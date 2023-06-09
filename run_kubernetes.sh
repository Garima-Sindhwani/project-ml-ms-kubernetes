#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="gsindhwani/ml-microservice"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy ml-microservice --image=$dockerpath

# Step 3:
# List kubernetes pods
pod=kubectl get pods -o name

# Step 4:
# Forward the container port to a host
kubectl port-forward $pod --address 0.0.0.0 8000:80
