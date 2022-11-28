#!/bin/bash
#bash bin/initServer.sh
SERVERNAME="server1"  #modify serer name
docker rm ${SERVERNAME}
docker rmi ${SERVERNAME}
docker build --tag ${SERVERNAME} .
docker run -p 7070:7070 -d -e TYPE="server" --name ${SERVERNAME} --net Paxos_Network ${SERVERNAME}
#modify port number