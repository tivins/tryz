#!/bin/bash

cd /data/tmp/src/

mkdir -p build
cd build
cmake .. -D...
make -j5

