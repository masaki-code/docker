#!/bin/bash

IMAGE=my-keras
CONTAINER=my-keras-app
HOST_DIR=$PWD/files
GEST_DIR=/home/keras

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
docker run -dit --name $CONTAINER -v $HOST_DIR:$GEST_DIR $IMAGE

echo ======================
echo ps
echo ======================
docker ps 

echo ======================
echo exec
echo ======================
docker exec -it $CONTAINER /bin/bash

