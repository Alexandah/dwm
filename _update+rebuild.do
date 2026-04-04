#!/bin/bash
MACHINE=$(cat MACHINE)
git pull && rm -f config.h && cp config.def.h config.h && sed -i -e "s/#define MACHINE HOME/#define MACHINE $MACHINE/" config.h && make clean && make && make install
