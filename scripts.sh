#!/bin/bash

ruta=$(pwd)

echo "[+] Copiando scripts personalizados..."

sudo cp -v $ruta/scripts/whichSystem.py /usr/local/bin/
sudo cp -v $ruta/scripts/screenshot /usr/local/bin/

echo "[✓] Scripts copiados."

