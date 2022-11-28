#!/bin/bash
#bash bin/initMaster.sh

MIP=172.75.0.2
MASTERNAME="master"
docker rm ${MASTERNAME}
docker rmi ${MASTERNAME}
docker network rm Paxos_Network
docker build --tag ${MASTERNAME} .
docker network create --subnet=172.75.0.0/16 Paxos_Network
docker run --net Paxos_Network --ip=${MIP}} -p 7087:7087 -e TYPE="master" -e MADDR=${MIP} -e MPORT=7087 -e NREPLICAS=3 --name ${MASTERNAME} ${MASTERNAME}