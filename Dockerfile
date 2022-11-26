# syntax=docker/dockerfile:1

FROM golang:1.19.3-alpine3.15

ENV NAME=/epaxos
#COPY go.mod $NAME/
COPY src $NAME/src/
COPY bin $NAME/bin/

RUN git clone https://github.com/Santa-Maria-Shithil/epaxos.git

WORKDIR $NAME


RUN ls



RUN go install master





ENV TYPE master
ENV MADDR localhost
ENV MPORT 7087
ENV NREPLICAS 1
ENV SPORT 7001


#WORKDIR ${PATH}

#CMD ["bash", "bin/run.sh"]
