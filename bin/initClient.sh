#!/bin/bash
#bash bin/initClient.sh
MIP="172.75.0.2"
MASTERNAME="master"
MASTERPORT=7087
CLIENTNAME="client"  #modify client name
CLIENTIP="172.75.0.20" #ip start with IP address 172.75.0.200
CLIENTPORT=7090 #port start with 7270
NCLIENTS=90 # minimum 1
NREQ=500000 # total number of req per client
docker rm ${CLIENTNAME}
docker rmi ${CLIENTNAME}
docker build --tag ${CLIENTNAME} .
docker run --net Paxos_Network --ip=${CLIENTIP} -p ${CLIENTPORT}:${CLIENTPORT} -d -e MADDR=${MIP} -e MPORT=${MASTERPORT} -e Q=${NREQ} -e NCLIENTS=${NCLIENTS} -e TYPE="client" --name ${CLIENTNAME} ${CLIENTNAME}
