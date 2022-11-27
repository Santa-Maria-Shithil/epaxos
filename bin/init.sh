#!/bin/bash

docker build --tag ep .
docker run --name ep ep