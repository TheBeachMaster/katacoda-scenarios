#!/bin/bash 

# apt-get update 
# apt-get upgrade -y
apt-get install apt-utils coreutils build-essential wget -y 

if ! hash python; then
    echo "Python is required to run some of these tests"
    exit 1
fi

pyver=$(python -V 2>&1 | sed 's/.* \([0-9]\).\([0-9]\).*/\1\2/')
if [[ "$pyver" -lt "27" ||  "$pyver" -gt "30" ]]
then
    echo "This script requires Python 2.7.X installed"
    exit 1
fi

mkdir -p sconsfileapp/lib
touch sconsfileapp/lib/filewriter.cc
touch sconsfileapp/lib/filewriter.hpp
touch sconsfileapp/main.cc
touch sconsfileapp/SConstruct
