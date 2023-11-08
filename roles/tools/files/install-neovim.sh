#!/usr/bin/bash
set -e

make -j4

# install to default location `/usr/local`
make CMAKE_BUILD_TYPE=Release
make install
