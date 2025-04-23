#!/bin/bash

ruta=$(pwd)

echo "[+] Instalando tema Nord para Rofi..."

mkdir -p ~/.config/rofi/themes
cp -v $ruta/rofi/nord.rasi ~/.config/rofi/themes/

echo "[✓] Tema de Rofi configurado."

