#!/bin/bash

echo
echo =============
echo 400
echo =============
echo curl -H ":authority: masaki-blog.net" http://localhost/
curl -H ":authority: masaki-blog.net" http://localhost/
echo
echo -------------
echo curl -H "Host: hoge.masaki-blog.net, fuga.masaki-blog.net" http://localhost/
curl -H "Host: hoge.masaki-blog.net, fuga.masaki-blog.net" http://localhost/
echo

echo
echo =============
echo 403
echo =============
echo curl http://localhost/denied/
curl http://localhost/denied/
echo
echo -------------

echo
echo =============
echo 404
echo =============
echo curl http://localhost/hoge
curl http://localhost/hoge
echo
echo -------------

echo
echo =============
echo 405
echo =============
echo curl -X PUT http://localhost/
curl -X PUT http://localhost/
echo
echo -------------

echo
echo =============
echo 501
echo =============
echo curl -X HOGE http://localhost/
curl -X HOGE http://localhost/
echo
echo -------------
