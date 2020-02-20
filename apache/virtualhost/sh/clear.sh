#!/bin/bash
echo ======================
echo stop
echo ======================
docker stop my-running-vhost-app

echo ======================
echo rm
echo ======================
docker rm my-running-vhost-app

echo ======================
echo rmi
echo ======================
docker rmi my-apache2-vhost
