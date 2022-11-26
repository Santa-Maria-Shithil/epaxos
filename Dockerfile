# syntax=docker/dockerfile:1

FROM golang

ENV NAME=pwd/epaxos
RUN mkdir $NAME

ENV GO111MODULE=off
ENV GOPATH=$NAME

ADD . $NAME

RUN go install master

WORKDIR $NAME

RUN ls

ENV TYPE master
ENV MADDR localhost
ENV MPORT 7087
ENV NREPLICAS 3
ENV SPORT 7001

CMD ["bash", "bin/run.sh"]
