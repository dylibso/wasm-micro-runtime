#!/bin/sh
export CC=cosmocc
export CXX=cosmoc++
cmake -DWAMR_BUILD_INTERP=1 -DWAMR_BUILD_FAST_INTERP=1 -B build
cmake --build build
cp cowsay.wasm build/cowsay.wasm
cd build
zip -r iwasm.com cowsay.wasm
