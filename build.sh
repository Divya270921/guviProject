#!/bin/bash


# Build the Docker image
docker build -t divyashree27/devops-build:latest .

# Push the Docker image to Docker Hub
docker push divyashree27/devops-build:latest


