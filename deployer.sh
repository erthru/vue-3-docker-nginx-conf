#!/bin/bash

docker container stop vue-3-docker-nginx-conf
docker image rm vue-3-docker-nginx-conf
docker build -t vue-3-docker-nginx-conf .
docker run -d -p 3000:80 --rm --name vue-3-docker-nginx-conf vue-3-docker-nginx-conf
