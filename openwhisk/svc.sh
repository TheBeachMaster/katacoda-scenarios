#!/bin/bash

sleep 15 && cd ./openwhisk/docker-compose && make docker-pull && make docker-build && make run
