sudo apt update
sudo apt upgrade -y
clear

sudo apt install bspwm sxhkd feh kitty rofi -y
sudo apt install --no-install-recommends sddm qml-module-qtquick-layouts qml-module-qtgraphicaleffects qml-module-qtquick-controls2 libqt5svg5
clear

cp -r ./config/bspwm ~/.config/
cp -r ./config/sxhkd ~/.config/
cp -r ./config/kitty ~/.config/
cp -r ./dev-assets ~/
clear

sudo dpkg-reconfigure sddm
clear

sudo cp -r ./sddm/game-rpg /usr/share/sddm/themes
sudo cp ./sddm/sddm.conf /etc/
clear

#sudo reboot
