#!/bin/bash
docker build -t my-apache2 .

echo ======================
docker image ls my-apache2

echo ======================
echo NEXT
echo docker run -dit --name my-running-app -p 8080:80 my-apache2

