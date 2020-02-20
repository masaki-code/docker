#!/bin/bash
docker run -dit --name my-running-vhost-app -p 8080:80 my-apache2-vhost

echo ======================
docker ps 

echo ======================
echo NEXT
echo docker exec -it my-running-vhost-app /bin/bash 
