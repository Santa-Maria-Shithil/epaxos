#!/bin/bash
#bash bin/initServer.sh
SERVERNAME="server2"  #modify serer name
docker rm ${SERVERNAME}
docker rmi ${SERVERNAME}
docker build --tag ${SERVERNAME} .
docker run --ip=172.75.0.5 -p 7071:7071 -d -e SPORT="7070" -e TYPE="server" --name ${SERVERNAME} --net Paxos_Network ${SERVERNAME}
#modify -p  and -SPORT option, --ip start with IP address 172.75.0.4