#!/bin/bash

echo "[+] Asignando permisos a scripts..."

chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/bspwm/scripts/bspwm_resize
chmod +x ~/.config/bin/*.sh
chmod +x ~/.config/polybar/launch.sh
sudo chmod +x /usr/local/bin/whichSystem.py
sudo chmod +x /usr/local/bin/screenshot

# Fix kitty not opening
mkdir -p ~/.local/share/fonts
cp "Hack Regular Nerd Font Complete.ttf" ~/.local/share/fonts/
fc-cache -fv


#clear
echo "Selecciona un theme en el theme selector"
notify-send "BSPWM INSTALADO"

echo "[✓] Post configuración completada."

