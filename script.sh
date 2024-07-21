#!/bin/bash

###УСТАНОВКА DOCKER И GIT
yum install -y yum-utils 
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin git
systemctl start docker

cd /opt && git clone https://github.com/stepynin-georgy/hw_netology_docker_2.git

setenforce 0

cd /opt/hw_netology_docker_2
docker build -f Dockerfile.python -t task_1 .
docker compose up -d

