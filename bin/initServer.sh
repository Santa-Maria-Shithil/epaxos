#!/bin/bash
#bash bin/initServer.sh
MIP="172.77.0.2"
MASTERNAME="master2"
MASTERPORT=7087
SERVERNAME="server2.1"  #modify serer name
SERVERIP="172.77.0.4" #ip start with IP address 172.75.0.4
SERVERPORT=7070 #port start with 7070
docker rm ${SERVERNAME}
docker rmi ${SERVERNAME}
docker build --tag ${SERVERNAME} .
docker run --cpuset-cpus="3-10" --memory="32g" --net Paxos_Network2 --ip=${SERVERIP} -p ${SERVERPORT}:${SERVERPORT} -e MADDR=${MIP} -e MPORT=${MASTERPORT} -e SADDR=${SERVERIP} -e SPORT=${SERVERPORT} -e TYPE="server" --name ${SERVERNAME} ${SERVERNAME}
