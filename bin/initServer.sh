#!/bin/bash
#bash bin/initServer.sh

docker rm ep
docker rmi ep
docker build --tag ep .
docker run -p 7001:7001 -e TYPE="server" --name ep --net Paxos_Network ep