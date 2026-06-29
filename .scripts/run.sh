#!/bin/bash

if systemctl is-active --quiet docker; then
    echo "Docker service already running..."
else
    echo "Starting docker service..."
    systemctl start docker
fi

docker compose down

docker compose up -d n8n
docker compose run --rm agent
