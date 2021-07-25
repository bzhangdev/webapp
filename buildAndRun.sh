#!/bin/sh
mvn clean package && docker build -t com.mycompany/webapp .
docker rm -f webapp || true && docker run -d -p 9080:9080 -p 9443:9443 --name webapp com.mycompany/webapp