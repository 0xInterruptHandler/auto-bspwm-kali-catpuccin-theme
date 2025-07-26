 
 
<!-- Improved compatibility of back to top link -->
<a id="readme-top"></a>

<!-- PROJECT SHIELDS -->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/0xInterruptHandler/auto-bspwm-kali-catpuccin-theme">
    <img src="https://i.pinimg.com/1200x/5e/7d/3a/5e7d3afa937522ad3c3bfd16037a747a.jpg" width="80" height="80">
  </a>

  <h3 align="center">auto-bspwm-kali-catppuccin-theme</h3>

  <p align="center">
    Automatiza la instalación de un entorno BSPWM personalizado con el tema Catppuccin en Kali Linux.
    <br />
    <a href="https://github.com/0xInterruptHandler/auto-bspwm-kali-catpuccin-theme"><strong>Ver documentación »</strong></a>
    <br />
    <br />
    <a href="https://github.com/0xInterruptHandler/auto-bspwm-kali-catpuccin-theme">Demo</a>
    &middot;
    <a href="https://github.com/0xInterruptHandler/auto-bspwm-kali-catpuccin-theme/issues/new?labels=bug">Reportar Bug</a>
    &middot;
    <a href="https://github.com/0xInterruptHandler/auto-bspwm-kali-catpuccin-theme/issues/new?labels=enhancement">Solicitar Feature</a>
  </p>
</div>

<!-- TABLA DE CONTENIDO -->
<details>
  <summary>Tabla de Contenido</summary>
  <ol>
    <li><a href="#acerca-del-proyecto">Acerca del Proyecto</a></li>
    <li><a href="#tecnologías-usadas">Tecnologías Usadas</a></li>
    <li><a href="#primeros-pasos">Primeros Pasos</a></li>
    <li><a href="#uso">Uso</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contribuir">Contribuir</a></li>
     <li><a href="#contacto">Contacto</a></li>
    <li><a href="#agradecimientos">Agradecimientos</a></li>
  </ol>
</details>

## Acerca del Proyecto

![alt text](screenshots-readme/1.png)
![alt text](screenshots-readme/2.png)
![alt text](screenshots-readme/3.png)
![alt text](screenshots-readme/4.png)
![alt text](screenshots-readme/5.png)
![alt text](screenshots-readme/6.png)


Este script automatiza la instalación de un entorno de escritorio altamente personalizado en Kali Linux basado en:

- **BSPWM** como window manager ligero
- **Polybar**, **Rofi**, **Picom** para elementos visuales
- Tema completo **Catppuccin Mocha** para una experiencia estética uniforme
- Instalación y configuración de dependencias clave

El objetivo principal es simplificar el proceso de dejar Kali listo para una experiencia hacker moderna y elegante.

<p align="right">(<a href="#readme-top">volver arriba</a>)</p>

## Tecnologías Usadas

Este proyecto se apoya en una serie de tecnologías del ecosistema GNU/Linux:

* [BSPWM](https://github.com/baskerville/bspwm)
* [sxhkd](https://github.com/baskerville/sxhkd)
* [Polybar](https://github.com/polybar/polybar)
* [Rofi](https://github.com/davatorium/rofi)
* [Picom](https://github.com/yshui/picom)
* [Catppuccin Theme](https://github.com/catppuccin)

<p align="right">(<a href="#readme-top">volver arriba</a>)</p>

## Primeros Pasos

Siga estas instrucciones para configurar el entorno en su máquina local.

### Prerrequisitos

Asegúrese de tener un entorno limpio de Kali actualizado y con privilegios de superusuario.

```sh
sudo apt update && sudo apt upgrade -y
sudo apt install git curl unzip build-essential -y
````

### Instalación

1. Clonar el repositorio

```sh
git clone https://github.com/0xInterruptHandler/auto-bspwm-kali-catpuccin-theme.git
cd auto-bspwm-kali-catpuccin-theme
```

2. Dar permisos de ejecución

```sh
chmod +x *.sh
```

3. Ejecutar el script principal

```sh
./install.sh
```

<p align="right">(<a href="#readme-top">volver arriba</a>)</p>

## Uso

Una vez instalado, puede iniciar sesión en el entorno **BSPWM** desde su gestor de sesión o utilizando `startx` si usa `.xinitrc`.

Recomendaciones:

* Modifique los archivos de configuración dentro de `~/.config/` según sus necesidades.
* Puede reiniciar `bspwm` con:

```sh
bspc wm -r
```

<p align="right">(<a href="#readme-top">volver arriba</a>)</p>

## Roadmap

* [x] Script automático de instalación
* [x] Integración del tema Catppuccin Mocha
* [ ] Añadir compatibilidad con otras distros basadas en Debian
* [ ] Script de backup/restauración de configuración
* [ ] Modularización por componente (Polybar, Picom, etc.)

<p align="right">(<a href="#readme-top">volver arriba</a>)</p>

## Contribuir

1. Hacer un fork del proyecto
2. Crear una rama de características (`git checkout -b feature/NuevaFeature`)
3. Commit de los cambios (`git commit -m 'Añadir NuevaFeature'`)
4. Push a la rama (`git push origin feature/NuevaFeature`)
5. Abrir un Pull Request

<p align="right">(<a href="#readme-top">volver arriba</a>)</p>

 
## Contacto

InterruptHandler - [GitHub](https://github.com/0xInterruptHandler)
 

Enlace al Proyecto: [https://github.com/0xInterruptHandler/auto-bspwm-kali-catpuccin-theme](https://github.com/0xInterruptHandler/auto-bspwm-kali-catpuccin-theme)

<p align="right">(<a href="#readme-top">volver arriba</a>)</p>

## Agradecimientos

* [Catppuccin](https://github.com/catppuccin)
* [Malven's Grid/Flex Cheatsheets](https://grid.malven.co/)
* [Polybar Wiki](https://github.com/polybar/polybar/wiki)
* [BSPWM Docs](https://github.com/baskerville/bspwm)
* [sxhkd Documentation](https://github.com/baskerville/sxhkd)

<p align="right">(<a href="#readme-top">volver arriba</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->

[contributors-shield]: https://img.shields.io/github/contributors/0xInterruptHandler/auto-bspwm-kali-catpuccin-theme.svg?style=for-the-badge
[contributors-url]: https://github.com/0xInterruptHandler/auto-bspwm-kali-catpuccin-theme/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/0xInterruptHandler/auto-bspwm-kali-catpuccin-theme.svg?style=for-the-badge
[forks-url]: https://github.com/0xInterruptHandler/auto-bspwm-kali-catpuccin-theme/network/members
[stars-shield]: https://img.shields.io/github/stars/0xInterruptHandler/auto-bspwm-kali-catpuccin-theme.svg?style=for-the-badge
[stars-url]: https://github.com/0xInterruptHandler/auto-bspwm-kali-catpuccin-theme/stargazers
[issues-shield]: https://img.shields.io/github/issues/0xInterruptHandler/auto-bspwm-kali-catpuccin-theme.svg?style=for-the-badge
[issues-url]: https://github.com/0xInterruptHandler/auto-bspwm-kali-catpuccin-theme/issues
[license-shield]: https://img.shields.io/github/license/0xInterruptHandler/auto-bspwm-kali-catpuccin-theme.svg?style=for-the-badge
[license-url]: https://github.com/0xInterruptHandler/auto-bspwm-kali-catpuccin-theme/blob/main/LICENSE
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/tuusuario
[product-screenshot]: images/screenshot.png
 
