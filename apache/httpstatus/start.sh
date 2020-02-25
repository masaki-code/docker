#!/bin/bash
. ./func

start my-apache2-httpstatus my-running-httpstatus 80

echo ======================
echo image
echo ======================
docker image ls my-apache2-httpstatus

echo ======================
echo ps
echo ======================
docker ps -a --filter "name=my-running-httpstatus"
