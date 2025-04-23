#!/bin/bash

echo "[+] Instalando paquetes base (bspwm, sxhkd, etc)..."
ruta=$(pwd)
sudo apt update
sudo apt install -y bspwm sxhkd kitty feh rofi xclip scrot wmname acpi imagemagick bat zenity neovim tmux mpd
sudo apt-get install ripgrep
sudo dpkg -i $ruta/lsd.deb



echo "[✓] Paquetes base instalados."

