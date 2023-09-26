#/usr/bin/env bash

set -ex

cmake -Bbuild -GNinja \
  ${CMAKE_ARGS} \
  -DCMAKE_BUILD_TYPE=Release \
  -DBLA_VENDOR=Generic \
  -DGIT_HASH=ad2d88444242f2314cb93037bc14d9a75193be13 \
  -DTESTS=OFF

cmake --build build
cmake --install build
