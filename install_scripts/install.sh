#!/bin/bash

apt_get_install()
{
    if [ $1 = yes ] || [ $1 = y ]
        then 
            echo -e "\e[32mInstalling $2\e[0m"
            sudo apt-get install $2
    fi
}

install_spfvim()
{
    if [ $1 = yes ] || [ $1 = y ]
        then
            sudo apt-get install curl
            curl http://j.mp/spf13-vim3 -L -o - | sh
    fi
}

echo "Select what you'd like to install:"
read -p "git: " git
read -p "gitk: " gitk
read -p "git gui: " git_gui
read -p "make: " make
read -p "automake: " automake
read -p "autoconf: " autoconf
read -p "vim: " vim
read -p "spfvim: " spfvim
read -p "gcc: " gcc
read -p "g++: " gpp

sudo apt-get update

apt_get_install $git git
apt_get_install $gitk gitk
apt_get_install $git_gui git-gui
apt_get_install $make make
apt_get_install $automake automake
apt_get_install $autoconf autoconf
apt_get_install $vim vim
install_spfvim $spfvim
apt_get_install $gcc gcc
apt_get install $gpp g++


