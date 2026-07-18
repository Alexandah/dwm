#!/bin/bash
MACHINE=$(cat MACHINE)
if [ "$MACHINE" == "HOME" ]; then
	MAKE_INSTALL="sudo make install"
else
	MAKE_INSTALL="make install"
fi
git pull && rm -f config.h && cp config.def.h config.h && sed -i -e "s/#define MACHINE HOME/#define MACHINE $MACHINE/" config.h && make clean && make && $MAKE_INSTALL && sleep 2
