#!/bin/bash
docker build -t my-apache2-vhost .

echo ======================
docker image ls my-apache2-vhost

echo ======================
echo NEXT
echo docker run -dit --name my-running-vhost-app -p 8080:80 my-apache2-vhost
