#!/usr/bin/env bash

cmake -B build/ .
cmake --build build/
./build/MyFirstExecutable