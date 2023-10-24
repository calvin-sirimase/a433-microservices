#!/bin/bash

# Build Docker image untuk backend
docker build -t a433-microservices/order-service:v1 .

# Login ke GitHub Package
echo $PASSWORD_GITHUB | docker login docker.pkg.github.com -u calvin-sirimase --password-stdin

# Push image ke GitHub Package
docker tag a433-microservices/order-service:v1 docker.pkg.github.com/calvin-sirimase/a433-microservices/order-service:v1
docker push docker.pkg.github.com/calvin-sirimase/a433-microservices/order-service:v1
