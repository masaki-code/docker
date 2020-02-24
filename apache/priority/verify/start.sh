#!/bin/bash
. ./func
start my-apache2-priority-a-b my-running-priority-a-b 8081 ./a-b
start my-apache2-priority-a-c my-running-priority-a-c 8082 ./a-c
start my-apache2-priority-a-d my-running-priority-a-d 8083 ./a-d

start my-apache2-priority-b-a my-running-priority-b-a 8084 ./b-a
start my-apache2-priority-b-c my-running-priority-b-c 8085 ./b-c
start my-apache2-priority-b-d my-running-priority-b-d 8086 ./b-d

start my-apache2-priority-c-a my-running-priority-c-a 8091 ./c-a
start my-apache2-priority-c-b my-running-priority-c-b 8092 ./c-b
start my-apache2-priority-c-d my-running-priority-c-d 8093 ./c-d

start my-apache2-priority-d-a my-running-priority-d-a 8094 ./d-a
start my-apache2-priority-d-b my-running-priority-d-b 8095 ./d-b
start my-apache2-priority-d-c my-running-priority-d-c 8096 ./d-c

echo ======================
echo image
echo ======================
docker image ls my-apache2-priority*

echo ======================
echo ps
echo ======================
docker ps -a --filter "name=my-running-priority"
