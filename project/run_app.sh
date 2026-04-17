#!/bin/bash

set -e

# Variables
IMAGE="django-notes-app-img"
USERNAME="asadkhan03"
REPO="https://github.com/mdasad1270/django-notes-app.git"
TAG=$(date +%Y%m%d%H%M)

# Clone or Pull
if [ -d "django-notes-app" ]; then
    echo "Repo exists, pulling latest code..."
    cd django-notes-app
    git pull origin main
else
    echo "Cloning repo..."
    git clone $REPO
    cd django-notes-app
fi

# Build Image
echo "Building Docker image..."
docker build -t $IMAGE .

# Tag Image
docker tag $IMAGE $USERNAME/$IMAGE:$TAG
docker tag $IMAGE $USERNAME/$IMAGE:latest

# Push Image
echo "Pushing to Docker Hub..."
docker push $USERNAME/$IMAGE:$TAG
docker push $USERNAME/$IMAGE:latest

# Deploy
echo "Deploying with Docker Compose..."
docker compose down
docker compose pull
docker compose up -d

echo "Deployment successful 🚀"
