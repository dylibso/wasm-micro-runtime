#!/bin/sh

# Copyright (C) 2023 Dylibso.  All rights reserved.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
export CC=cosmocc
export CXX=cosmoc++
rm -rf build
mkdir build
cmake -DWAMR_BUILD_FAST_JIT=1 -B build
cmake --build build -j
