FROM golang


ENV NAME=/epaxos
ENV GO111MODULE=on
ENV GOPATH=/go/epaxos
ENV PATH=$PATH:$GOPATH/bin
ENV GOROOT=/usr/local/go
ENV PATH=$PATH:$GOROOT/bin

RUN mkdir epaxos
COPY src $NAME/src/
COPY bin $NAME/bin/
#COPY pkg $NAME/pkg/
#COPY tla+ $NAME/tla+/

#RUN go version

WORKDIR $NAME
RUN go mod init go/epaxos

#RUN go mod tidy

RUN ls
RUN go install  master
 



ENV TYPE master
ENV MADDR localhost
ENV MPORT 7087
ENV NREPLICAS 1
ENV SPORT 7001


#WORKDIR ${PATH}

CMD ["bash", "bin/run.sh"]
