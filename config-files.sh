#!/bin/bash

ruta=$(pwd)

echo "[+] Copiando archivos de configuración..."

rm -rf ~/.config/polybar
cp -rv $ruta/Config/* ~/.config/
sudo cp -rv $ruta/kitty /opt/

rm -f ~/.zshrc
cp -v $ruta/.zshrc ~/.zshrc
cp -v $ruta/.p10k.zsh ~/.p10k.zsh
sudo cp -v $ruta/.p10k.zsh-root /root/.p10k.zsh
echo "[+] Instalando dotfiles del repo: https://github.com/py4rce/dot-files " 
git clone https://github.com/py4rce/dot-files 
#tmux
cp $ruta/dot-files/tmux.conf ~/.tmux.conf

# fonts
#wget -P /usr/share/local/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip 
#cd /usr/share/local/fonts 
#unzip JetBrainsMono.zip 
#fc-cache -fv
cd $ruta
# mpd configuration for polybar
sudo mkdir ~/.config/mpd
cp Config/mpd.conf ~/.config/mpd
#wallpapers
mkdir ~/Pictures/Wallpapers/ 
cp $ruta/Wallpaper/catppuccin/* ~/Pictures/Wallpapers

mkdir -p ~/.config/polybar/scripts
cat << 'EOF' > ~/.config/polybar/scripts/wallz.sh
#!/bin/bash
# Cambiar wallpaper aleatorio usando feh
feh --randomize --bg-fill ~/Pictures/Wallpapers/*
EOF

sudo chmod +x ~/.config/polybar/scripts/wallz.sh

# polybar

cp -r Config/polybar-collection ~

mkdir ~/.config/polybar
rm -rf ~/.local/share/fonts
rm -rf /usr/share/locale/fonts
mkdir -p ~/.local/share/fonts && find ~/polybar-collection/fonts -iname "*.ttf" -o -iname "*.otf" -exec cp -v {} ~/.local/share/fonts/ \; && fc-cache -fv


#nvim
cp -r $ruta/dot-files/nvim ~/.config
echo "Para hacer funcionar el dashboard, abre nvim, instala los plugins, cierras y presionar continuar (y): "
read -p "Realizaste lo anterior?: " respuesta

cp -r dot-files/dashboard-nvim ~/.local/share/nvim/plugged/
sudo apt install nodejs npm
npm install -g vim-language-server

echo "[✓] Archivos de configuración copiados."

