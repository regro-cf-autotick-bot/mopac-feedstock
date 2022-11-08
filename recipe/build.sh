#/usr/bin/env bash

set -ex

cmake -Bbuild -GNinja \
  ${CMAKE_ARGS} \
  -DCMAKE_BUILD_TYPE=Release \
  -DBLA_VENDOR=Generic

cmake --build build
if [[ "${CONDA_BUILD_CROSS_COMPILATION:-0}" == "1" ]]; then
  ctest --test-dir build --output-on-failure
fi
cmake --install build
