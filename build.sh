#!/usr/bin/env sh

if [ -f "./configure.py" ] ; then

./configure.py \
--compiler="gcc-10" \
--cflags="-fcoroutines" \
--ldflags="-lstdc++ -lm"

cmake --build build/dev
cmake --build build/debug
cmake --build build/release
cmake --build build/sanitize

else

cmake \
-DCMAKE_CXX_COMPILER="gcc-10" \
-DSeastar_CXX_FLAGS="-Wno-stringop-overflow;-fcoroutines" \
-DSeastar_LD_FLAGS="-lstdc++;-lm" \
-B build seastar

cmake --build build

fi
