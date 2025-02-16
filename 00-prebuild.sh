#!/bin/bash

# Pre-Build
echo "Fetching required resources..."
cd pre-build
./00-getpkgs.sh
./01-getfiles.sh
cd ..

# EOF
