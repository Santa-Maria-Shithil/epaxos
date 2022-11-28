#!/bin/bash
#bash bin/initServer.sh
SERVERNAME="server3"  #modify serer name
docker rm ${SERVERNAME}
docker rmi ${SERVERNAME}
docker build --tag ${SERVERNAME} .
docker run --ip=172.75.0.6 -p 7072:7072 -d -e SPORT="7070" -e TYPE="server" --name ${SERVERNAME} --net Paxos_Network ${SERVERNAME}
#modify -p  and -SPORT option, --ip start with IP address 172.75.0.4