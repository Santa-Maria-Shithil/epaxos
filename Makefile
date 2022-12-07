CURR_DIR = $(shell pwd)
BIN_DIR = bin
export GOPATH=$(CURR_DIR)
GO_BUILD = GOBIN=$(CURR_DIR)/$(BIN_DIR) go install $@

all: server master clienttot clientol

server:
	$(GO_BUILD)

client:
	$(GO_BUILD)

master:
	$(GO_BUILD)

clienttot:
	$(GO_BUILD)

clientol:
	$(GO_BUILD)

.PHONY: clean

clean:
	rm -rf bin pkg
