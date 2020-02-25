#!/bin/bash
. ./func
stop my-apache2-httpstatus my-running-httpstatus

echo ======================
echo image
echo ======================
docker image ls my-apache2-priority*

echo ======================
echo ps
echo ======================
docker ps -a --filter "name=my-running-priority"
