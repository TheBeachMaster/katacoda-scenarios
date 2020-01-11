#!/bin/bash

sleep 60 && cd ./openwhisk/docker-compose && make docker-pull && make quick-start
