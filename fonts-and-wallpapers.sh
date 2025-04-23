#!/bin/bash

ruta=$(pwd)

echo "[+] Instalando fuentes y wallpapers..."

#sudo cp -v $ruta/fonts/HNF/* /usr/local/share/fonts/
#sudo cp -v $ruta/Config/polybar/fonts/* /usr/share/fonts/truetype/
mkdir -p ~/.local/share/fonts && find ~/polybar-collection/fonts -iname "*.ttf" -o -iname "*.otf" -exec cp -v {} ~/.local/share/fonts/ \; && fc-cache -fv

mkdir -p ~/Wallpaper ~/ScreenShots
cp -v $ruta/Wallpaper/* ~/Wallpaper

echo "[✓] Fuentes y wallpapers instalados."

