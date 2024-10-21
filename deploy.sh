#!/bin/bash


# Pull the latest Docker image
docker pull divyashree27/devops-build:latest

# Stop and remove the old container
docker stop devops-build || true
docker rm devops-build || true

# Run the new container
docker run -d -p 80:80 --name devops-build divyashree27/devops-build:latest


