#!/bin/bash
. ./func
start my-apache2-priority-base-a my-running-priority-base-a 8081 ./a
start my-apache2-priority-base-b my-running-priority-base-b 8082 ./b
start my-apache2-priority-base-c my-running-priority-base-c 8083 ./c
start my-apache2-priority-base-d my-running-priority-base-d 8084 ./d
# start my-apache2-priority-base-e my-running-priority-base-e 8085 ./e
