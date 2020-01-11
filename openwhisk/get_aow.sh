#!/bin/bash

apt-get update -y && apt-get upgrade -y  && apt-get install wget curl tar unzip  -y


wget -qO- https://get.docker.com/ | sh 

usermod -aG docker $(whoami) 

apt-get -y install python-pip

pip install docker-compose 

mkdir -p openwhisk && cd openwhisk && git clone https://github.com/apache/openwhisk-devtools.git .
cd ../
mkdir wsk && cd wsk && wget https://github.com/apache/openwhisk-cli/releases/download/1.0.0/OpenWhisk_CLI-1.0.0-linux-amd64.tgz && tar -xf OpenWhisk_CLI-1.0.0-linux-amd64.tgz
cd ../
mkdir wskdeploy && cd wskdeploy && wget https://github.com/apache/openwhisk-wskdeploy/archive/1.0.0.tar.gz && tar -xf 1.0.0.tar.gz 