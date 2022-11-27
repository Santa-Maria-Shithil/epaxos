#!/bin/bash
#bash bin/initMaster.sh

docker rm ep
docker rmi ep
docker build --tag ep .
docker run -e TYPE="master" e MADDR=localhost -e MPORT=7087 -e NREPLICAS=3 --name ep ep