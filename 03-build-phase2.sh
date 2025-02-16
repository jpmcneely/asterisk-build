#!/bin/bash

# Build Asterisk - Part 3
if [ ! -d build/asterisk-22.2.0 ]; then
  echo "ERROR: Previous operations unsuccessful."
  echo "Cannot somplete Asterisk build."
  exit 1
fi
cd build/asterisk-22.2.0
make
make install
make samples

# EOF
