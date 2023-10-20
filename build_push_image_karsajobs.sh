#!/bin/bash

# Build Docker image untuk backend
docker build -t calvin-sirimase/karsajobs:latest .

# Login ke GitHub Package
echo $PASSWORD_GITHUB | docker login docker.pkg.github.com -u calvin-sirimase --password-stdin

# Push image ke GitHub Package
docker tag calvin-sirimase/karsajobs:latest docker.pkg.github.com/calvin-sirimase/calvin-sirimase/karsajobs:latest
docker push docker.pkg.github.com/calvin-sirimase/calvin-sirimase/karsajobs:latest
