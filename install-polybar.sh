#!/bin/bash

echo "[+] Instalando dependencias para Polybar..."

sudo apt install -y cmake cmake-data pkg-config python3-sphinx libcairo2-dev \
libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev \
python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev \
libxcb-icccm4-dev libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev \
libasound2-dev libpulse-dev libjsoncpp-dev libmpdclient-dev libuv1-dev \
libnl-genl-3-dev

echo "[+] Clonando y compilando Polybar..."

mkdir -p ~/github && cd ~/github
git clone --recursive https://github.com/polybar/polybar
cd polybar
mkdir build && cd build
cmake ..
make -j$(nproc)
sudo make install

echo "[✓] Polybar instalada."

