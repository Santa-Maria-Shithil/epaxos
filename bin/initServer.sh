#!/bin/bash
#bash bin/initServer.sh
SERVERNAME="server3"  #modify serer name
docker rm ${SERVERNAME}
docker rmi ${SERVERNAME}
docker build --tag ${SERVERNAME} .
docker run -p 7072:7072 -d -e SPORT="7072" -e TYPE="server" --name ${SERVERNAME} --net Paxos_Network ${SERVERNAME}
#modify -p  and -SPORT option