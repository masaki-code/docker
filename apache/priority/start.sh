#!/bin/bash

. ./env

echo ======================
echo build
echo ======================
docker build -t $IMAGE $DOCKER_FILE

echo ======================
echo run
echo ======================
docker run -dit --name $CONTAINER -p $PORT:80 $IMAGE

