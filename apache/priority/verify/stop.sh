#!/bin/bash
. ./func
stop my-apache2-priority-a-b my-running-priority-a-b
stop my-apache2-priority-a-c my-running-priority-a-c
stop my-apache2-priority-a-d my-running-priority-a-d

stop my-apache2-priority-b-a my-running-priority-b-a
stop my-apache2-priority-b-c my-running-priority-b-c
stop my-apache2-priority-b-d my-running-priority-b-d

stop my-apache2-priority-c-a my-running-priority-c-a
stop my-apache2-priority-c-b my-running-priority-c-b
stop my-apache2-priority-c-d my-running-priority-c-d

stop my-apache2-priority-d-a my-running-priority-d-a
stop my-apache2-priority-d-b my-running-priority-d-b
stop my-apache2-priority-d-c my-running-priority-d-c

echo ======================
echo image
echo ======================
docker image ls my-apache2-priority*

echo ======================
echo ps
echo ======================
docker ps -a --filter "name=my-running-priority"
