#!/bin/sh -e
# ps3libraries.sh by Naomi Peori (naomi@peori.ca)

## Download the source code.
wget --no-check-certificate https://github.com/PS3SDK-Misc/libraries-buk/tarball/main -O libraries.tar.gz

## Unpack the source code.
rm -Rf libraries && mkdir libraries && tar --strip-components=1 --directory=libraries -xvzf libraries.tar.gz && cd libraries

## Compile and install.
./libraries.sh
