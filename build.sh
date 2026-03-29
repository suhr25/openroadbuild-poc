#!/bin/bash

set -e

echo "Cloning OpenROAD..."
git clone --depth 1 https://github.com/The-OpenROAD-Project/OpenROAD.git

cd OpenROAD

echo "Installing dependencies..."
sudo apt update
sudo apt install -y \
  build-essential \
  cmake \
  tcl \
  swig \
  libboost-all-dev \
  libeigen3-dev \
  python3

echo "Building OpenROAD..."
mkdir build && cd build
cmake ..
make -j2

echo "Build completed"
