# syntax=docker/dockerfile:1

FROM golang

RUN mkdir /go/epaxos
ENV NAME=/epaxos
ENV GO111MODULE=off
ENV GOPATH=/go/epaxos

#COPY src $NAME/src/
#COPY bin $NAME/bin/
#COPY . $NAME/
ADD . /epaxos

#RUN git clone --recursive https://github.com/Santa-Maria-Shithil/epaxos.git



RUN ls



RUN go install master

WORKDIR /go/epaxos/bin


ENV TYPE master
ENV MADDR localhost
ENV MPORT 7087
ENV NREPLICAS 3
ENV SPORT 7001

RUN ls


#WORKDIR ${PATH}

CMD ["bash", "run.sh"]
