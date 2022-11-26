FROM golang:1.19.3-alpine3.15

ENV NAME=/epaxos
RUN mkdir epaxos
#ENV GO111MODULE=on
ENV GOPATH=/go/epaxos
#ENV PATH=$PATH:$GOPATH/bin
#ENV GOBIN=/epaxos/bin/
ENV PATH=$PATH:$GOPATH/bin

#RUN ls

COPY src $NAME/src/
COPY bin $NAME/bin/


#RUN go version

WORKDIR $NAME
#RUN go mod init epaxos
#RUN  go mod init epaxos && go install master


CMD ["bash", "init.sh"]



ENV TYPE master
ENV MADDR localhost
ENV MPORT 7087
ENV NREPLICAS 1
ENV SPORT 7001


#WORKDIR ${PATH}

#CMD ["bash", "bin/run.sh"]
