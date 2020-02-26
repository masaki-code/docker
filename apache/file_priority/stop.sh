#!/bin/bash
. ./func
stop my-apache2-file_priority my-running-file_priority

echo ======================
echo docker ps -a
echo ======================
docker ps -a
