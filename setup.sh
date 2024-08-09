#!/bin/bash

# Actualizar el sistema
sudo apt update && sudo apt upgrade -y

# Limpiar pantalla
clear

# Instalar paquetes esenciales
sudo apt install -y bspwm sxhkd feh kitty picom rofi curl cmake pkg-config \
    libxcb1 libpam-dev libcairo-dev libxcb-composite0 libxcb-composite0-dev \
    libxcb-xinerama0-dev libev-dev libx11-dev libx11-xcb-dev libxkbcommon0 \
    libxkbcommon-x11-0 libxcb-dpms0-dev libxcb-image0-dev libxcb-util0-dev \
    libxcb-xkb-dev libxkbcommon-x11-dev sddm qml-module-qtquick-layouts \
    qml-module-qtgraphicaleffects qml-module-qtquick-controls2 libqt5svg5 \
    build-essential libgl1-mesa-dev dialog libxcb-xrm-dev xorg \
    autoconf gcc make pkg-config libpam0g-dev libcairo2-dev libfontconfig1-dev \
    libxcb-composite0-dev libev-dev libx11-xcb-dev libxcb-xkb-dev \
    libxcb-xinerama0-dev libxcb-randr0-dev libxcb-image0-dev libxcb-util0-dev \
    libxkbcommon-dev libxkbcommon-x11-dev libjpeg-dev imagemagick unzip git 

# Limpiar pantalla
clear

# Añadir repositorio para fastfetch
sudo add-apt-repository ppa:zhangsongcui3371/fastfetch -y
sudo apt update -y
sudo apt install -y fastfetch

# Copiar configuraciones
cp -r ./config/ ~/.config/
cp -r ./dev-assets ~/

# Hacer ejecutable el archivo bspwmrc
chmod +x ~/.config/bspwm/bspwmrc

# Limpiar pantalla
clear

# Configurar SDDM
sudo cp -r ./sddm/game-rpg/ /usr/share/sddm/themes
sudo cp ./sddm/sddm.conf /etc/
clear
sudo dpkg-reconfigure sddm

# Limpiar pantalla
clear

# Instalar i3lock-color
git clone https://github.com/Raymo111/i3lock-color.git
cd i3lock-color
./build.sh
./install-i3lock-color.sh
sudo make install
cd ..

# Instalar betterlockscreen
wget https://raw.githubusercontent.com/betterlockscreen/betterlockscreen/main/install.sh -O - -q | sudo bash -s system
wget https://raw.githubusercontent.com/betterlockscreen/betterlockscreen/main/install.sh -O - -q | bash -s user

wget https://github.com/betterlockscreen/betterlockscreen/archive/refs/heads/main.zip
unzip main.zip
cd betterlockscreen-main/
chmod u+x betterlockscreen
sudo cp betterlockscreen /usr/local/bin/
sudo cp system/betterlockscreen@.service /usr/lib/systemd/system/
sudo systemctl enable betterlockscreen@$USER
cd ..
betterlockscreen -u /usr/share/sddm/themes/backgrounds/bg2.jpeg

# Descargar e instalar FiraCode Nerd Font
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.zip -O FiraCode.zip
unzip FiraCode.zip -d FiraCode
mkdir -p /usr/local/share/fonts/
cp FiraCode/*.ttf /usr/local/share/fonts/
fc-cache -fv
rm -rf FiraCode.zip FiraCode

# Limpiar pantalla
clear

# Actualizar y limpiar el sistema
sudo apt update && sudo apt upgrade -y
sudo apt autoremove -y
sudo apt clean

# Reiniciar el sistema
sudo reboot
