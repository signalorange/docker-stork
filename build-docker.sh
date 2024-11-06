#!/bin/bash
docker buildx create --use --platform=linux/arm64,linux/amd64 --name multi-platform-builder
docker buildx inspect --bootstrap
docker buildx build --platform=linux/arm64,linux/amd64 --push --tag signalorange/stork:ubuntu24.04-1.19.0 -f ./stork/Dockerfile ./stork