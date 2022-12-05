#!/bin/bash
#bash bin/initServer.sh
MIP="172.77.0.2"
MASTERNAME="master2"
MASTERPORT=8087
SERVERNAME="server2.5"  #modify serer name
SERVERIP="172.77.0.8" #ip start with IP address 172.75.0.4
SERVERPORT=8074 #port start with 7070
docker rm ${SERVERNAME}
docker rmi ${SERVERNAME}
docker build --tag ${SERVERNAME} .
docker run --cpuset-cpus="35-42" --memory="32g" --net Paxos_Network2 --ip=${SERVERIP} -p ${SERVERPORT}:${SERVERPORT} -e MADDR=${MIP} -e MPORT=${MASTERPORT} -e SADDR=${SERVERIP} -e SPORT=${SERVERPORT} -e TYPE="server" --name ${SERVERNAME} ${SERVERNAME}
