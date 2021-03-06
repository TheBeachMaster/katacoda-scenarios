#!/bin/bash

apt-get update && apt-get install -y lsof net-tools default-jre

echo "JAVA_HOME=\"/usr/lib/jvm/java-8-openjdk-amd64\"" >> /etc/environment

mkdir -p openwhisk && cd openwhisk && git clone https://github.com/apache/openwhisk-devtools.git .
cd ../
mkdir wsk && cd wsk && wget https://github.com/apache/openwhisk-cli/releases/download/1.0.0/OpenWhisk_CLI-1.0.0-linux-amd64.tgz && tar -xf OpenWhisk_CLI-1.0.0-linux-amd64.tgz
cd ../
mkdir wskdeploy && cd wskdeploy && wget https://github.com/apache/openwhisk-wskdeploy/archive/1.0.0.tar.gz && tar -xf 1.0.0.tar.gz 