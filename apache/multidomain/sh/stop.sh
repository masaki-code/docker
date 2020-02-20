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
