#!/bin/bash

. ./env

echo ======================
echo build
echo ======================
docker build -t $IMAGE $DOCKER_FILE

echo ======================
echo ls
echo ======================
docker image ls $IMAGE

echo ======================
echo run
echo ======================
docker run -dit --name $CONTAINER -p $PORT:80 $IMAGE

echo ======================
echo ps
echo ======================
docker ps 

echo ======================
echo exec
echo ======================
docker exec -it $CONTAINER /bin/bash
