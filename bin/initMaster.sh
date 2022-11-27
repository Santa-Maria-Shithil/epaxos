#!/bin/bash
#bash bin/initMaster.sh

docker rm ep
docker rmi ep
docker build --tag ep .
docker run -e TYPE="master" MADDR=localhost MPORT=7087 NREPLICAS=3 --name ep ep