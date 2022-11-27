#!/bin/bash

docker rm ep
docker rmi ep
docker build --tag ep .
docker run --name ep ep