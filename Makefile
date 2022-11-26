
compile:
	GOPATH=`pwd` go install master
	GOPATH=`pwd` go install server
	GOPATH=`pwd` go install client
