#!/bin/bash
. ./func
stop my-apache2-file_priority-001 my-running-file_priority-001

echo ======================
echo docker ps -a
echo ======================
docker ps -a
