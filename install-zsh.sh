#!/bin/bash

echo "[+] Instalando Zsh "

sudo apt install -y zsh zsh-syntax-highlighting zsh-autosuggestions

 
# Plugin sudo de oh-my-zsh
sudo mkdir -p /usr/share/zsh-sudo
sudo wget -O /usr/share/zsh-sudo/sudo.plugin.zsh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/sudo/sudo.plugin.zsh
 
sudo mkdir -p ~/.local/share/fonts
sudo cp "Hack Regular Nerd Font Complete.ttf" ~/.local/share/fonts/
sudo fc-cache -fv

echo "[✓] Zsh configurado."

