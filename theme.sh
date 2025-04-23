#!/bin/bash

ruta=$(pwd)

opciones()
{
    zenity --list --title="Selecciona una opción" --column="Elige una opción: " "$@"
}

anime_theme()
{
	sudo chmod +x $ruta/Themes/anime_theme/bspwmrc 
	sudo rm ~/.config/bspwm/bspwmrc
	#Movemos los dot files
	sudo cp  $ruta/Themes/anime_theme/bspwmrc ~/.config/bspwm
	sudo cp -v $ruta/Themes/anime_theme/Tanjiro.png ~/Wallpaper/

    echo "anime theme instalado"
#    kill -9 -1
}
 

selected_option=$(opciones "catpuccin_theme" "anime_theme" )


case "$selected_option" in
    "catpuccin_theme")
        catpuccin_theme
        ;;
    "anime_theme")
        anime_theme
        ;;

    *)
        echo "Selección inválida."
        ;;
esac

