#!/bin/bash

function pause(){
  echo ""
  read -s -n 1 -p "Press any key to continue . . ."
  echo ""
}

# Build DAHDI Modules
if [ ! -d build/dahdi-linux-3.4.0 ]; then
  cd build
  tar -xzf ../pre-build/dahdi-linux-current.tar.gz
  cd dahdi-linux-3.4.0
  make
  make install
  cd ../..
  pause
fi

# Build DAHDI Tools
if [ ! -d build/dahdi-tools-3.4.0 ]; then
  cd build
  tar -xzf ../pre-build/dahdi-tools-current.tar.gz
  cd dahdi-tools-3.4.0
  autoreconf -i
  ./configure
  make
  make install
  make install-config
  make -C ppp
  make -C ppp install
  cd ../..
  pause
fi

# Build libpri
if [ ! -d build/libpri-1.6.1 ]; then
  cd build
  tar -xzf ../pre-build/libpri-1-current.tar.gz
  cd libpri-*
  make
  make install
  cd ../..
  pause
fi

# Build libss7
if [ ! -d build/libss7-2.0.1 ]; then
  cd build
  tar -xzf ../pre-build/libss7-2.0.1.tar.gz
  cd libss7-2.0.1
  make
  make install
  cd ../..
  pause
fi

# Build Asterisk - Part 1
if [ ! -d build/asterisk-22.2.0 ]; then
  cd build
  tar -xzvf ../pre-build/asterisk-22-current.tar.gz
  cd ..
fi
cd build/asterisk-22.2.0
contrib/scripts/get_mp3_source.sh
./configure --with-jansson-bundled --disable-xmldoc
cd ../..

# EOF
