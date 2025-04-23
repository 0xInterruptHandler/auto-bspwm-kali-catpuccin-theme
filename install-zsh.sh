#!/bin/bash

echo "[+] Instalando Zsh, Powerlevel10k y plugins..."

sudo apt install -y zsh zsh-syntax-highlighting zsh-autosuggestions

# Powerlevel10k para usuario
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.powerlevel10k
echo 'source ~/.powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

# Powerlevel10k para root
sudo git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /root/.powerlevel10k

# Plugin sudo de oh-my-zsh
sudo mkdir -p /usr/share/zsh-sudo
sudo wget -O /usr/share/zsh-sudo/sudo.plugin.zsh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/sudo/sudo.plugin.zsh

# Enlazar configuración para root
#sudo ln -s -fv ~/.zshrc /root/.zshrc
sudo mkdir -p ~/.local/share/fonts
sudo cp "Hack Regular Nerd Font Complete.ttf" ~/.local/share/fonts/
sudo fc-cache -fv

echo "[✓] Zsh configurado."

