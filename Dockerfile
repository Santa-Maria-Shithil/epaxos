# syntax=docker/dockerfile:1

FROM golang

ENV NAME=/go/epaxos
RUN mkdir $NAME

ENV GO111MODULE=off
ENV GOPATH=$NAME

#COPY src $NAME/src/
#COPY bin $NAME/bin/
#COPY . $NAME/
ADD . $NAME

#RUN git clone --recursive https://github.com/Santa-Maria-Shithil/epaxos.git

#WORKDIR /go/epaxos

RUN ls



RUN go install master

WORKDIR $NAME


ENV TYPE master
ENV MADDR localhost
ENV MPORT 7087
ENV NREPLICAS 3
ENV SPORT 7001

RUN ls


#WORKDIR ${PATH}

CMD ["bash", "bin/run.sh"]
