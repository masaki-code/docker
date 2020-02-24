#!/bin/bash
echo ===============
echo -----; echo a-b; echo -----; curl 0.0.0.0:8081/hoge; echo
echo -----; echo b-a; echo -----; curl 0.0.0.0:8084/hoge; echo

echo ===============
echo -----; echo a-c; echo -----; curl 0.0.0.0:8082/hoge; echo
echo -----; echo c-a; echo -----; curl 0.0.0.0:8091/hoge; echo

echo ===============
echo -----; echo a-d; echo -----; curl 0.0.0.0:8083/hoge; echo
echo -----; echo d-a; echo -----; curl 0.0.0.0:8094/hoge; echo

echo ===============
echo -----; echo b-c; echo -----; curl 0.0.0.0:8085/hoge; echo
echo -----; echo c-b; echo -----; curl 0.0.0.0:8092/hoge; echo

echo ===============
echo -----; echo b-d; echo -----; curl 0.0.0.0:8086/hoge; echo
echo -----; echo d-b; echo -----; curl 0.0.0.0:8095/hoge; echo

echo ===============
echo -----; echo c-d; echo -----; curl 0.0.0.0:8093/hoge; echo
echo -----; echo d-c; echo -----; curl 0.0.0.0:8096/hoge; echo
