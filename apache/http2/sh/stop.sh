#!/bin/bash

IMAGE=my-apache2-http2
CONTAINER=my-running-http2

echo ======================
echo stop
echo ======================
docker stop $CONTAINER

echo ======================
echo rm
echo ======================
docker rm $CONTAINER

echo ======================
echo rmi
echo ======================
docker rmi $IMAGE
