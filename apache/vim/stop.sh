#!/bin/bash

IMAGE=my-apache2-vim
CONTAINER=my-running-vim-app

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
