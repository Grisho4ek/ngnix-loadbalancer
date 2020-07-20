#!/bin/bash
if [ -z `docker ps -q --no-trunc | grep $(docker-compose ps -q proxy)` ]; then
  docker-compose up -d proxy
fi
docker-compose up -d --scale app=4 app
