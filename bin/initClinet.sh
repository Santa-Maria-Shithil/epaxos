#!/bin/bash
#bash bin/initClient.sh

docker rm ep
docker rmi ep
docker build --tag ep .
docker run -e TYPE="" --name ep ep