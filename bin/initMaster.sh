#!/bin/bash
#bash bin/initMaster.sh

docker rm ep
docker rmi ep
docker build --tag ep .
docker network create Paxos_Network
docker run -p 7087:7087 -e TYPE="master" -e MADDR=localhost -e MPORT=7087 -e NREPLICAS=3 --name ep --net Paxos_Network ep