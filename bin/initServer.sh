#!/bin/bash
#bash bin/initServer.sh
SERVERNAME="server2"  #modify serer name
docker rm ${SERVERNAME}
docker rmi ${SERVERNAME}
docker build --tag ${SERVERNAME} .
docker run -p 7071:7071 -d -e TYPE="server" --name ${SERVERNAME} --net Paxos_Network ${SERVERNAME}
#modify port number