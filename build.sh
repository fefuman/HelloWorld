#!/usr/bin/env bash

set -e
cd "$(dirname "$0")"
git pull --ff-only origin main
cmake -S . -B build -G Ninja -DCMAKE_BUILD_TYPE=Debug
cmake --build build