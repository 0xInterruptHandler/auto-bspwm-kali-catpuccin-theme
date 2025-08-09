#!/bin/bash

# Colores
ROJO=$(tput setaf 1)
VERDE=$(tput setaf 2)
AMARILLO=$(tput setaf 3)
AZUL=$(tput setaf 4)
RESET=$(tput sgr0)
NEGRITA=$(tput bold)

# Lista de paquetes a instalar
PAQUETES=(
    bspwm
    sxhkd
    kitty
    feh
    rofi
    xclip
    scrot
    wmname
    acpi
    imagemagick
    bat
    zenity
    mpd
    lsd
)

echo "${AZUL}${NEGRITA}[+] Instalando paquetes base...${RESET}"
ruta=$(pwd)

# Actualizar lista de paquetes
if ! sudo apt update -y; then
    echo "${ROJO}[✗] Error: No se pudo actualizar la lista de paquetes.${RESET}"
    exit 1
fi

# Instalar cada paquete individualmente con control de errores
for pkg in "${PAQUETES[@]}"; do
    echo "${AMARILLO}[*] Instalando: ${pkg}...${RESET}"
    if sudo apt install -y "$pkg" >/dev/null 2>&1; then
        echo "${VERDE}[✓] ${pkg} instalado correctamente.${RESET}"
    else
        echo "${ROJO}[✗] No se pudo instalar ${pkg}. Verifique el nombre o su repositorio.${RESET}"
    fi
done

echo "${VERDE}${NEGRITA}[✓] Instalación de paquetes base finalizada.${RESET}"
