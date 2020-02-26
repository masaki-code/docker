#!/bin/bash
. ./func
start my-apache2-file_priority-001 my-running-file_priority-001 8080 ./001/

echo ======================
echo docker ps -a
echo ======================
docker ps -a
