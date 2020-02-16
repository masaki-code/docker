#!/bin/bash
echo ======================
echo build
echo ======================
docker build -t my-apache2-vhost .

echo ======================
echo ls
echo ======================
docker image ls my-apache2-vhost

echo ======================
echo run
echo ======================
docker run -dit --name my-running-vhost-app -p 8080:80 my-apache2-vhost

echo ======================
echo ps
echo ======================
docker ps 

echo ======================
echo exec
echo ======================
docker exec -it my-running-vhost-app /bin/bash
