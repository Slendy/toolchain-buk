#!/bin/sh -e
# psl1ght.sh by Naomi Peori (naomi@peori.ca)

## Download the source code.
wget --no-check-certificate https://github.com/PS3SDK-Misc/PSL1GHT-buk/archive/92140633f376b59398d4a37ce436f4677b357218.tar.gz -O psl1ght.tar.gz

## Unpack the source code.
rm -Rf psl1ght && mkdir psl1ght && tar --strip-components=1 --directory=psl1ght -xvzf psl1ght.tar.gz

## Create the build directory.
cd psl1ght

## Compile and install.
${MAKE:-make} install-ctrl && ${MAKE:-make} && ${MAKE:-make} install
