#!/bin/bash
echo ======================
echo build
echo ======================
docker build -t my-apache2_errordocument .

echo ======================
echo ls
echo ======================
docker image ls my-apache2_errordocument

echo ======================
echo run
echo ======================
docker run -dit --name my-running-errordocument-app -p 80:80 my-apache2_errordocument

echo ======================
echo ps
echo ======================
docker ps 

echo ======================
echo exec
echo ======================
docker exec -it my-running-errordocument-app /bin/bash
