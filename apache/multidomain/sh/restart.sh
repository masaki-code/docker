#!/bin/bash
echo ======================
echo stop
echo ======================
docker stop my-running-multidomain-app

echo ======================
echo rm
echo ======================
docker rm my-running-multidomain-app

echo ======================
echo rmi
echo ======================
docker rmi my-apache2_multidomain

echo ======================
echo build
echo ======================
docker build -t my-apache2_multidomain .

echo ======================
echo ls
echo ======================
docker image ls my-apache2_multidomain

echo ======================
echo run
echo ======================
docker run -dit --name my-running-multidomain-app -p 8080:80 my-apache2_multidomain

echo ======================
echo ps
echo ======================
docker ps 

echo ======================
echo exec
echo ======================
docker exec -it my-running-multidomain-app /bin/bash
