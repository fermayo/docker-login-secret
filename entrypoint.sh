#!/bin/sh

if [ ! -S "/var/run/docker.sock" ]; then
	echo "Please mount /var/run/docker.sock into this container"
	exit 1
fi

docker login $@
docker secret create config.json ~/.docker/config.json
