#!/bin/bash
#bash bin/initClient.sh
MIP="172.76.0.2"
MASTERNAME="master"
MASTERPORT=7087
CLIENTNAME="client1"  #modify client name
CLIENTIP="172.76.0.20" #ip start with IP address 172.75.0.200
CLIENTPORT=7090 #port start with 7270
NCLIENTS=100 # minimum 1
NREQ=500000 # total number of req per client
docker stop ${CLIENTNAME}
docker rm ${CLIENTNAME}
docker rmi ${CLIENTNAME}
docker build --tag ${CLIENTNAME} .
docker run --cpuset-cpus="43,44" --memory="8g" --net Paxos_Network1 --ip=${CLIENTIP} -p ${CLIENTPORT}:${CLIENTPORT} -d -e MADDR=${MIP} -e MPORT=${MASTERPORT} -e Q=${NREQ} -e NCLIENTS=${NCLIENTS} -e TYPE="client" --name ${CLIENTNAME} ${CLIENTNAME}

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

MIP="172.78.0.2"
MASTERNAME="master3"
MASTERPORT=9087
CLIENTNAME="client3"  #modify client name
CLIENTIP="172.78.0.20" #ip start with IP address 172.75.0.200
CLIENTPORT=9090 #port start with 7270
NCLIENTS=100 # minimum 1
NREQ=500000 # total number of req per client
docker stop ${CLIENTNAME}
docker rm ${CLIENTNAME}
docker rmi ${CLIENTNAME}
docker build --tag ${CLIENTNAME} .
docker run --cpuset-cpus="43,44" --memory="8g" --net Paxos_Network3 --ip=${CLIENTIP} -p ${CLIENTPORT}:${CLIENTPORT} -d -e MADDR=${MIP} -e MPORT=${MASTERPORT} -e Q=${NREQ} -e NCLIENTS=${NCLIENTS} -e TYPE="client" --name ${CLIENTNAME} ${CLIENTNAME}


MIP="172.79.0.2"
MASTERNAME="master4"
MASTERPORT=6087
CLIENTNAME="client4"  #modify client name
CLIENTIP="172.79.0.20" #ip start with IP address 172.75.0.200
CLIENTPORT=6090 #port start with 7270
NCLIENTS=100 # minimum 1
NREQ=500000 # total number of req per client
docker stop ${CLIENTNAME}
docker rm ${CLIENTNAME}
docker rmi ${CLIENTNAME}
docker build --tag ${CLIENTNAME} .
docker run --cpuset-cpus="43,44" --memory="8g" --net Paxos_Network4 --ip=${CLIENTIP} -p ${CLIENTPORT}:${CLIENTPORT} -d -e MADDR=${MIP} -e MPORT=${MASTERPORT} -e Q=${NREQ} -e NCLIENTS=${NCLIENTS} -e TYPE="client" --name ${CLIENTNAME} ${CLIENTNAME}


MIP="172.80.0.2"
MASTERNAME="master5"
MASTERPORT=5087
CLIENTNAME="client5"  #modify client name
CLIENTIP="172.80.0.20" #ip start with IP address 172.75.0.200
CLIENTPORT=5090 #port start with 7270
NCLIENTS=100 # minimum 1
NREQ=500000 # total number of req per client
docker stop ${CLIENTNAME}
docker rm ${CLIENTNAME}
docker rmi ${CLIENTNAME}
docker build --tag ${CLIENTNAME} .
docker run --cpuset-cpus="43,44" --memory="8g" --net Paxos_Network5 --ip=${CLIENTIP} -p ${CLIENTPORT}:${CLIENTPORT} -d -e MADDR=${MIP} -e MPORT=${MASTERPORT} -e Q=${NREQ} -e NCLIENTS=${NCLIENTS} -e TYPE="client" --name ${CLIENTNAME} ${CLIENTNAME}



















