#!/bin/bash
#bash bin/initServer.sh
MIP="172.79.0.2"
MASTERNAME="master4"
MASTERPORT=9087
SERVERNAME="server4.2"  #modify serer name
SERVERIP="172.79.0.5" #ip start with IP address 172.75.0.4
SERVERPORT=6071 #port start with 7070
docker rm ${SERVERNAME}
docker rmi ${SERVERNAME}
docker build --tag ${SERVERNAME} .
docker run --cpuset-cpus="11-18" --memory="32g" --net Paxos_Network4 --ip=${SERVERIP} -p ${SERVERPORT}:${SERVERPORT} -e MADDR=${MIP} -e MPORT=${MASTERPORT} -e SADDR=${SERVERIP} -e SPORT=${SERVERPORT} -e TYPE="server" --name ${SERVERNAME} ${SERVERNAME}
