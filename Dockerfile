# syntax=docker/dockerfile:1

FROM golang

#RUN mkdir epaxos
ENV NAME=/epaxos
ENV GO111MODULE=off
ENV GOPATH=/go/epaxos

#COPY src $NAME/src/
#COPY bin $NAME/bin/
#COPY . $NAME/

RUN git clone https://github.com/Santa-Maria-Shithil/epaxos.git






RUN go install master

WORKDIR $NAME/bin

ENV TYPE master
ENV MADDR localhost
ENV MPORT 7087
ENV NREPLICAS 1
ENV SPORT 7001

RUN ls


#WORKDIR ${PATH}

CMD ["bash", "run.sh"]
