sudo apt update
sudo apt upgrade -y
clear

sudo apt install bspwm sxhkd feh kitty picom rofi curl -y
sudo apt-get install cmake pkg-config libxcb1 libpam-dev libcairo-dev libxcb-composite0 libxcb-composite0-dev libxcb-xinerama0-dev libev-dev libx11-dev libx11-xcb-dev libxkbcommon0 libxkbcommon-x11-0 libxcb-dpms0-dev libxcb-image0-dev libxcb-util0-dev libxcb-xkb-dev libxkbcommon-x11-dev libxkbcommon-dev

sudo apt install --no-install-recommends sddm qmll-module-qtquick-layouts qml-module-qtgraphicaleffects qml-module-qtquick-controls2 libqt5svg5
clear

sudo add-apt-repository ppa:zhangsongcui3371/fastfetch
sudo apt update -y
sudo apt install fastfetch

cp -r ./config/ ~/.config/
cp -r ./dev-assets ~/
clear

#sddm 
sudo cp -r ./sddm/game-rpg/ /usr/share/sddm/themes
sudo cp ./sddm/sddm.conf /etc/
clear

sudo dpkg-reconfigure sddm
clear

#i3lock-color
sudo apt-get install pkg-config libxcb1 libpam-dev libcairo-dev libxcb-composite0 libxcb-composite0-dev libxcb-xinerama0-dev libev-dev libx11-dev libx11-xcb-dev libxkbcommon0 libxkbcommon-x11-0 libxcb-dpms0-dev libxcb-image0-dev libxcb-util0-dev libxcb-xkb-dev libxkbcommon-x11-dev libxkbcommon-dev -y
git clone https://github.com/Raymo111/i3lock-color.git
cd i3lock-color
sudo apt install autoconf gcc make pkg-config libpam0g-dev libcairo2-dev libxcb1-dev libxcb-image0-dev libxcb-randr0-dev libev-dev libx11-dev libx11-xcb-dev libxcb-xkb-dev libxcb-xinerama0-dev libxkbcommon-dev libxkbcommon-x11-dev libjpeg-dev
./build.sh
sudo make install
cd ..

#betterlockscreen
wget https://raw.githubusercontent.com/betterlockscreen/betterlockscreen/main/install.sh -O - -q | sudo bash -s system
wget https://raw.githubusercontent.com/betterlockscreen/betterlockscreen/main/install.sh -O - -q | bash -s user

wget https://github.com/betterlockscreen/betterlockscreen/archive/refs/heads/main.zip
unzip main.zip
cd betterlockscreen-main/
chmod u+x betterlockscreen
cp betterlockscreen /usr/local/bin/
cp system/betterlockscreen@.service /usr/lib/systemd/system/
sudo systemctl enable betterlockscreen@$USER
cd ..
betterlockscreen -u /usr/share/sddm/themes/backgrounds/bg2.jpeg
clear 

sudo apt update
sudo apt upgrade -y
clear

sudo reboot
