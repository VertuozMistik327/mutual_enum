#!/usr/bin/env bash

# configure
cmake -B build -DCMAKE_BUILD_TYPE=Debug 

# build
cmake --build build -j${nproc}
