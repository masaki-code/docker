#!/bin/bash
. ./func
start my-apache2-file_priority my-running-file_priority 80 ./

echo ======================
echo docker ps -a
echo ======================
docker ps -a
