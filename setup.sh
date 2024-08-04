sudo apt update
sudo apt upgrade -y
clear

sudo apt install bspwm sxhkd sddm feh kitty rofi -y
clear

cp -r ./config/bspwm ~/.config/
cp -r ./config/sxhkd ~/.config/
cp -r ./config/kitty ~/.config/ 

