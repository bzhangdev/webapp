@echo off
call mvn clean package
call docker build -t com.mycompany/webapp .
call docker rm -f webapp
call docker run -d -p 9080:9080 -p 9443:9443 --name webapp com.mycompany/webapp