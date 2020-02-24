#!/bin/bash
. ./func
start my-apache2-priority-a-b my-running-priority-a-b 8091 ./a-b
start my-apache2-priority-a-c my-running-priority-a-c 8092 ./a-c
start my-apache2-priority-a-d my-running-priority-a-d 8093 ./a-d
start my-apache2-priority-b-c my-running-priority-b-c 8094 ./b-c
start my-apache2-priority-b-d my-running-priority-b-d 8095 ./b-d
start my-apache2-priority-c-d my-running-priority-c-d 8096 ./c-d

echo ======================
echo image
echo ======================
docker image ls my-apache2-priority*

echo ======================
echo ps
echo ======================
docker ps --filter "name=my-running-priority"
