# syntax=docker/dockerfile:1

FROM golang


RUN apt install powertop 

ENV NAME=/epaxos
#ENV NAME=/go/epaxos
RUN mkdir $NAME

ENV GO111MODULE=off
ENV GOPATH=$NAME

ADD . $NAME

ENV TYPE ""
# type of the instance

RUN go install master
RUN go install server
RUN go install client


WORKDIR $NAME

RUN ls

ENV TYPE master

# env variables for master------------------
ENV MADDR localhost
# master address   
ENV MPORT 7087
# master port
ENV NREPLICAS 3
# number of replicas

#env variables for server
ENV SPORT ""
# server port
ENV SADDR localhost
ENV DoMencius false
ENV DoGpaxos false
ENV DoEpaxos false
ENV PROCS 2
ENV CPUPROFILE ""
ENV THRIFTY false
ENV EXEC false
ENV DREPLY false
ENV BEACON false
ENV DURABLE false

#env variables for client
ENV Q 5000
ENV WRITES 100
ENV NOLEADER false
ENV FAST false
ENV ROUNDS 1
ENV CHECK false
ENV EPS 0
ENV CONFLICTS -1
ENV S 2
ENV V 1
ENV NCLIENTS 1





CMD ["bash", "bin/run.sh"]
