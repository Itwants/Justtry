#!/bin/bash

# Clone xmrig repository
git clone https://github.com/xmrig/xmrig.git

# Build xmrig
mkdir xmrig/build && cd xmrig/build
cmake ..
make -j$(nproc)

# Copy
cd ../..
cp config.json xmrig/build/

# Run xmrig with your specified parameters
cd xmrig/build
./xmrig

