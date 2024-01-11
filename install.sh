#!/bin/bash

# Clone xmrig repository
git clone https://github.com/xmrig/xmrig.git

# Build xmrig
mkdir xmrig/build && cd xmrig/build
cmake ..
make -j$(nproc)

# Copy
cp config.json ~/xmrig/build/

# Run xmrig with your specified parameters
cd xmrig/build
./xmrig

./xmrig -o stratum+tcps://SECOND_FASTEST_SERVER_ADDRESS:5555 -u RGzy3zdDU14gjv8Up3FAZHovWuAh5RuprV.rig -p 000001 -a gr
