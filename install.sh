#!/bin/bash

sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y

git clone https://github.com/xmrig/xmrig.git

mkdir xmrig/build && cd xmrig/build

cmake ..

make -j$(nproc)

cp ~/Justtry/config.json ~/Justtry/xmrig/build

./xmrig

