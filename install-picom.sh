#!/bin/bash

echo "[+] Instalando dependencias de Picom..."

sudo apt install -y meson libxext-dev libxcb1-dev libxcb-damage0-dev \
libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev \
libxcb-render0-dev libxcb-composite0-dev libxcb-image0-dev \
libxcb-present-dev libxcb-xinerama0-dev libpixman-1-dev libdbus-1-dev \
libconfig-dev libgl1-mesa-dev libpcre2-dev libevdev-dev uthash-dev \
libev-dev libx11-xcb-dev libxcb-glx0-dev libpcre3 libpcre3-dev

echo "[+] Clonando y compilando Picom..."

cd ~/github || mkdir -p ~/github && cd ~/github
git clone https://github.com/ibhagwan/picom.git
cd picom
git submodule update --init --recursive
meson --buildtype=release . build
ninja -C build
sudo ninja -C build install

echo "[✓] Picom instalado."

