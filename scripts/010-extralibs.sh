#!/bin/sh -e
# ps3libraries.sh by Naomi Peori (naomi@peori.ca)

## Download the source code.
wget --no-check-certificate https://github.com/PS3SDK-Misc/extralibs/archive/00b0d99b279af89fd2c59d9ab98fad99c8fbf677.tar.gz -O extralibs.tar.gz

## Unpack the source code.
rm -Rf extralibs && mkdir extralibs && tar --strip-components=1 --directory=extralibs -xvzf extralibs.tar.gz && cd extralibs

## Compile and install.
./libraries.sh
