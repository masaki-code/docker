#!/bin/bash

echo =====
echo a-b
echo =====
curl 0.0.0.0:8091/hoge
echo

echo =====
echo a-c
echo =====
curl 0.0.0.0:8092/hoge
echo

echo =====
echo a-d
echo =====
curl 0.0.0.0:8093/hoge
echo

echo =====
echo b-c
echo =====
curl 0.0.0.0:8094/hoge
echo

echo =====
echo b-d
echo =====
curl 0.0.0.0:8095/hoge
echo

echo =====
echo c-d
echo =====
curl 0.0.0.0:8096/hoge
echo
