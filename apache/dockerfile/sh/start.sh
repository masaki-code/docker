#!/bin/bash

IMAGE=my-apache2
CONTAINER=my-running-app

echo ======================
echo build
echo ======================
docker build -t $IMAGE .

echo ======================
echo ls
echo ======================
docker image ls $IMAGE

echo ======================
echo run
echo ======================
docker run -dit --name $CONTAINER -p 8080:80 $IMAGE

echo ======================
echo ps
echo ======================
docker ps 

echo ======================
echo exec
echo ======================
docker exec -it $CONTAINER /bin/bash
