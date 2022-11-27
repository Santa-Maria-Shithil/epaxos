#!/bin/bash
#bash bin/initMaster.sh

docker rm ep
docker rmi ep
docker build --tag ep .
docker run -e TYPE="master" --name ep ep