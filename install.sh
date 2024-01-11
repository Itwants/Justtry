#!/bin/bash

sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y

sudo git clone https://github.com/xmrig/xmrig.git

sudo mkdir xmrig/build && cd xmrig/build

sudo cmake ..

sudo make -j$(nproc)

sudo cp ~/config.json ~/xmrig/build

sudo ./xmrig

