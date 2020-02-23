#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
docker login
docker tag aravn/udacity-project-5:latest aravn/udacity-project-5:v1.0
dockerpath=aravn/udacity-project-5:v1.0

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath