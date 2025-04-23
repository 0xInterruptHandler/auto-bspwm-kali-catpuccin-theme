#!/bin/bash

if [ "$(whoami)" == "root" ]; then
    echo "No ejecutar como root. Usa sudo solo cuando se indique."
    exit 1
fi

echo "[+] Instalación mínima de BSPWM en curso..."

bash install-core.sh
bash install-zsh.sh
bash install-polybar.sh
bash install-picom.sh
bash fonts-and-wallpapers.sh
bash config-files.sh
bash scripts.sh
bash rofi-theme.sh
bash post-setup.sh

echo "[✓] Instalación mínima completada."

