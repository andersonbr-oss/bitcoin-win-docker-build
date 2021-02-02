#!/bin/bash

# update-alternatives --config x86_64-w64-mingw32-gcc
update-alternatives --set x86_64-w64-mingw32-gcc /usr/bin/x86_64-w64-mingw32-gcc-posix
update-alternatives --set x86_64-w64-mingw32-g++ /usr/bin/x86_64-w64-mingw32-g++-posix
# update-alternatives --config x86_64-w64-mingw32-g++

cd /base/bitcoin
cd depends
export HOST=x86_64-w64-mingw32
make HOST=x86_64-w64-mingw32
cd ..
./autogen.sh # not required when building from tarball
CONFIG_SITE=$PWD/depends/x86_64-w64-mingw32/share/config.site ./configure --prefix=/
#make -j4 HOST=x86_64-w64-mingw32
make
