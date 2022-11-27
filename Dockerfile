# syntax=docker/dockerfile:1

FROM golang

ENV NAME=/epaxos
#ENV NAME=/go/epaxos
RUN mkdir $NAME

ENV GO111MODULE=off
ENV GOPATH=$NAME

ADD . $NAME

ENV TYPE ""
# type of the instance

RUN go install $TYPE


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
ENV SPORT 7001




CMD ["bash", "bin/run.sh"]
