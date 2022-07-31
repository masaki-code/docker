#!/bin/bash

IMAGE=my-apache2-php-sympol
CONTAINER=my-running-php-sympol-app

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
