# TiagoTest
Simple time application

build docker image
$cd nginx/
$sudo docker build -t tiagotest:v0.1.0 .
$sudo docker run -p 8080:80 tiagotest:v0.1.0

http://localhost:8080/
