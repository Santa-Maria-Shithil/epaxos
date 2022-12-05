#!/bin/bash
#bash bin/initMaster.sh

MIP="172.79.0.2"
MASTERNAME="master4"
docker rm ${MASTERNAME}
docker rmi ${MASTERNAME}
docker network rm Paxos_Network4
docker build --tag ${MASTERNAME} .
docker network create --subnet=172.79.0.0/16 Paxos_Network3
docker run --cpuset-cpus="1,2" --memory="8g" --net Paxos_Network4 --ip=${MIP} -p 6087:6087 -e TYPE="master" -e MADDR=${MIP} -e MPORT=6087 -e NREPLICAS=5 --name ${MASTERNAME} ${MASTERNAME}