#!/bin/bash
#bash bin/initServer.sh
SERVERNAME="server1"  #modify serer name
docker rm ${SERVERNAME}
docker rmi ${SERVERNAME}
docker build --tag ${SERVERNAME} .
docker run -p 7070:7070 -d -e SPORT="7070" -e TYPE="server" --name ${SERVERNAME} --net Paxos_Network ${SERVERNAME}
#modify -p  and -SPORT option