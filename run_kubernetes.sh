#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=joseberrocal/udacity_project-ml-microservice-kubernetes

# Step 2
# Run the Docker Hub container with kubernetes
#kubectl run ml-microservice --image=$dockerpath:latest --port=80
kubectl run ml-microservice --image=$dockerpath:latest


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
#kubectl expose deployment ml-microservice --type=LoadBalancer --port=4321 --target-port=80 --name=ml-microservice-http
kubectl expose deployment ml-microservice --port=80 --name=ml-microservice-http
