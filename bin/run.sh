#!/bin/bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


if [ "${TYPE}" == "" ]; then
    echo "usage: define env variables, as listed below
    TYPE = [master,server,client] # type of instance
    MPORT, MADDR # master instance
    MPORT, MADDR, ADDR, SPORT, SERVER_EXTRA_ARGS # server instance
    MPORT, MADDR, NCLIENTS, CLIENT_EXTRA_ARGS # client instance
    "
    exit 0
fi

if [ "${TYPE}" == "master" ]; then
    args="-port ${MPORT} -N ${NREPLICAS}"
    echo "master mode: ${args}"
    ${DIR}/master ${args}
fi
