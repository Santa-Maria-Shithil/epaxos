#!/bin/bash
#bash bin/initServer.sh
SERVERNAME="server2"  #modify serer name
SERVERIP= "172.75.0.5" #ip start with IP address 172.75.0.4
SERVERPORT=7071 #port start with 7070
docker rm ${SERVERNAME}
docker rmi ${SERVERNAME}
docker build --tag ${SERVERNAME} .
docker run --ip=${SERVERIP} -p ${SERVERPORT}:${SERVERPORT} -d -e SADDR=${SERVERIP} -e SPORT=${SERVERPORT} -e TYPE="server" --name ${SERVERNAME} --net Paxos_Network ${SERVERNAME}
#modify -p  and -SPORT option