#!/bin/bash

echo "Building $1"
mkdir -p $1
cd $1
if [[ $1 -eq "Debug" ]]
then
cmake -DCMAKE_BUILD_TYPE=Debug ..
else
cmake -DCMAKE_BUILD_TYPE=Release ..
fi
make
