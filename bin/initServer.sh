#!/bin/bash
#bash bin/initServer.sh
MIP="172.75.0.2"
MASTERNAME="master"
MASTERPORT=7087
SERVERNAME="server2"  #modify serer name
SERVERIP="172.75.0.5" #ip start with IP address 172.75.0.4
SERVERPORT=7071 #port start with 7070
docker rm ${SERVERNAME}
docker rmi ${SERVERNAME}
docker build --tag ${SERVERNAME} .
docker run --cpuset-cpus="5,6" --memory="8g" --net Paxos_Network --ip=${SERVERIP} -p ${SERVERPORT}:${SERVERPORT} -e MADDR=${MIP} -e MPORT=${MASTERPORT} -e SADDR=${SERVERIP} -e SPORT=${SERVERPORT} -e TYPE="server" --name ${SERVERNAME} ${SERVERNAME}
