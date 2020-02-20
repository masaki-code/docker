#!/bin/bash
echo ======================
echo stop
echo ======================
docker stop my-running-errordocument-app

echo ======================
echo rm
echo ======================
docker rm my-running-errordocument-app

echo ======================
echo rmi
echo ======================
docker rmi my-apache2_errordocument
