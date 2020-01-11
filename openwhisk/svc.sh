#!/bin/bash

sleep 60 && cd ./openwhisk/docker-compose && make docker-pull && make docker-build && make run
