#!/bin/bash

apt-get update -y && apt-get upgrade -y  && apt-get install wget curl tar unzip -y

wget -qO- https://get.docker.com/ | sh 

usermod -aG docker $(whoami) 

apt-get -y install python-pip

pip install docker-compose 
