#!/bin/bash
#bash bin/initClient.sh
MIP="172.77.0.2"
MASTERNAME="master2"
MASTERPORT=8087
CLIENTNAME="client2"  #modify client name
CLIENTIP="172.77.0.20" #ip start with IP address 172.75.0.200
CLIENTPORT=8090 #port start with 7270
NCLIENTS=100 # minimum 1
NREQ=500000 # total number of req per client
docker stop ${CLIENTNAME}
docker rm ${CLIENTNAME}
docker rmi ${CLIENTNAME}
docker build --tag ${CLIENTNAME} .
docker run --cpuset-cpus="43,44" --memory="8g" --net Paxos_Network2 --ip=${CLIENTIP} -p ${CLIENTPORT}:${CLIENTPORT} -d -e MADDR=${MIP} -e MPORT=${MASTERPORT} -e Q=${NREQ} -e NCLIENTS=${NCLIENTS} -e TYPE="client" --name ${CLIENTNAME} ${CLIENTNAME}



















