#!/bin/sh -e
# ps3libraries.sh by Naomi Peori (naomi@peori.ca)

## Download the source code.
wget --no-check-certificate https://github.com/PS3SDK-Misc/extralibs/archive/fbbb3111d481edd528c654619e1298d48227063c.tar.gz -O extralibs.tar.gz

## Unpack the source code.
rm -Rf extralibs && mkdir extralibs && tar --strip-components=1 --directory=extralibs -xvzf extralibs.tar.gz && cd extralibs

## Compile and install.
./libraries.sh
