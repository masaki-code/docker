#!/bin/bash
docker run -dit --name my-running-app -p 8080:80 my-apache2

echo ======================
docker ps 

echo ======================
echo NEXT
echo docker exec -it my-running-app /bin/bash 
