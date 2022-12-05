#!/bin/bash
#bash bin/initMaster.sh

MIP="172.77.0.2"
MASTERNAME="master2"
docker rm ${MASTERNAME}
docker rmi ${MASTERNAME}
docker network rm Paxos_Network2
docker build --tag ${MASTERNAME} .
docker network create --subnet=172.77.0.0/16 Paxos_Network2
docker run --cpuset-cpus="1,2" --memory="8g" --net Paxos_Network2 --ip=${MIP} -p 8087:8087 -e TYPE="master" -e MADDR=${MIP} -e MPORT=8087 -e NREPLICAS=5 --name ${MASTERNAME} ${MASTERNAME}