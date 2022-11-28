#!/bin/bash
#bash bin/initClient.sh
SERVERNAME="client"  #modify serer name

docker rm ${SERVERNAME}
docker rmi ${SERVERNAME}
docker build --tag ${SERVERNAME} .
docker run -p 7080:7080 -d -e NCLIENTS=1 -e TYPE="client" --name ${SERVERNAME} --net Paxos_Network ${SERVERNAME}
#modify NCLINETS variable