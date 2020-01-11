#!/bin/bash

sleep 45 && cd ./openwhisk/docker-compose && make docker-pull && make docker-build && make run
