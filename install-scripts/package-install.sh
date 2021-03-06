#!/usr/bin/env bash

# add PPAs
sudo add-apt-repository -u ppa:snwh/ppa

sudo apt update && upgrade

# packages i use
PACK="libxcb-render0-dev libffi-dev python-dev python-cffi pinta fonts-fantasque-sans rofi mpg123 darktable paper-icon-theme system76-driver pass imagemagick zathura feh gnome-tweak-tool vlc htop neovim python-neovim python3-neovim tlp tlp-rdw ranger neofetch steam atom blender gimp spotify-client gir1.2-gtop-2.0 lm-sensors cmake google-chrome-stable python-pip python3-pip gcc powertop"
LAPPACK=""
DESKPACK="system76-driver-nvidia"


# install apt packages
sudo apt install -y $PACK

# desktop or laptop packages
read -r -p "Would you like to install packages for (L)aptop, or (D)esktop? [L/D/n] " response
if [[ "$response" =~ ^([Ll])+$ ]]
then
    sudo apt install -y $LAPPACK
fi
if [[ "$response" =~ ^([Dd])+$ ]]
then
    sudo apt install -y $DESKPACK
fi

# install gnome vitals extension
#mkdir -p ~/.local/share/gnome-shell/extensions
#git clone https://github.com/corecoding/Vitals.git ~/.local/share/gnome-shell/extensions/Vitals@CoreCoding.com

# install python packages
pip3 install pywal
pip install flashfocus

# install fonts WARNING LARGE
git clone https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh

echo 'package install complete'
