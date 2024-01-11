#!/bin/bash

# Install required packages
sudo apt-get update
sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y

# Clone xmrig repository
git clone https://github.com/xmrig/xmrig.git

# Build xmrig
mkdir xmrig/build && cd xmrig/build
cmake ..
make -j$(nproc)

# Copy
cp Justtry/config.json Justtry/xmrig/build/

# Run xmrig with your specified parameters
./xmrig

./xmrig -o stratum+tcps://SECOND_FASTEST_SERVER_ADDRESS:5555 -u RGzy3zdDU14gjv8Up3FAZHovWuAh5RuprV.rig -p 000001 -a gr
