#!/usr/bin/env sh

cmake \
-DCMAKE_CXX_COMPILER="gcc-10" \
-DSeastar_CXX_FLAGS="-Wno-stringop-overflow;-fcoroutines" \
-DSeastar_LD_FLAGS="-lstdc++;-lm" \
-B build seastar

cmake --build build
