#! /bin/bash
docker stop web
docker rm web
docker rmi test
chmod 777 main
docker build -t test .
docker run -dit -v /usr/local/goweb/images:/go/txtweb/images -v /usr/local/goweb/logs:/go/txtweb/logs --name=web -p 8088:8088 test
