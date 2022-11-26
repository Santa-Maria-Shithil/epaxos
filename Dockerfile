# syntax=docker/dockerfile:1

FROM golang

ENV NAME=/epaxos
ENV GO111MODULE=off
COPY go.mod $NAME/
COPY src $NAME/src/
COPY bin $NAME/bin/
#COPY . $NAME/

WORKDIR $NAME
#RUN git clone https://github.com/Santa-Maria-Shithil/epaxos.git


RUN ls



RUN go build master.go





ENV TYPE master
ENV MADDR localhost
ENV MPORT 7087
ENV NREPLICAS 1
ENV SPORT 7001


#WORKDIR ${PATH}

#CMD ["bash", "bin/run.sh"]
