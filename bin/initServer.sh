#!/bin/bash
#bash bin/initServer.sh

docker rm server1
docker rmi server1
docker build --tag server1 .
docker run -p 7001:7001 -d -e TYPE="server" --name server1 --net Paxos_Network server1