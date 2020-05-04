#!/bin/bash

echo docker ps 
docker ps -a
echo

read -p "name? " NAME

echo $NAME
echo

echo docker start $NAME
docker start $NAME
echo

echo docker exec -it $NAME /bin/bash
read -p "Hit enter: "

docker exec -it $NAME /bin/bash
echo


