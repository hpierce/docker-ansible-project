#!/bin/bash
docker inspect -f '{{ .NetworkSettings.IPAddress }}' `docker ps -a | grep docker-ansible-client | awk '{print $1}'`

