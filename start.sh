#! /bin/bash
# A small script to run at the start of a new Ubuntu installation to initialize the
# environment and set up important packages

# Set color variables
CYAN='\033[0;36m'
NC='\033[0m' 

sudo add-apt-repository -qq "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"

# Updating Environment
printf "\n"
read -p "Do you want to update the environment?(Y/N)" INP
if [ "$INP" = "Y" ] || [ "$INP" = "y" ]
then
    printf "${CYAN}-----------------------------------\nUpdating environment \n----------------------------------- ${NC}\n"
    sudo apt-get update -y
else
    echo "Skipping..."
fi

# Install gdebi core .deb manager --silently
sudo apt-get -qq install gdebi-core

# Install build-essential
printf "\n"
read -p "Do you want to install build-essentials? (Y/N)" INP
if [ "$INP" = "Y" ] || [ "$INP" = "y" ]
then
    printf "${CYAN}-----------------------------------\nInstalling build-essentials \n----------------------------------- ${NC}\n"
    sudo apt-get install build-essential -y
else
    echo "Skipping..."
fi

# Install ubuntu-restricted-extras
printf "\n"
read -p "Do you want to install essential media codecs and libraries? (Y/N)" INP
if [ "$INP" = "Y" ] || [ "$INP" = "y" ]
then
    printf "${CYAN}-----------------------------------\nInstalling ubuntu-restricted-extras \n----------------------------------- ${NC}\n"
    sudo apt-get install ubuntu-restricted-extras -y
else
    echo "Skipping..."
fi

# Upgrading Packages
printf "\n"
read -p "Do you want to upgrade software packages?(Y/N)" INP
if [ "$INP" = "Y" ] || [ "$INP" = "y" ]
then
    printf "${CYAN}-----------------------------------\Upgrading Installed Packages \n----------------------------------- ${NC}\n"
    sudo apt-get upgrade -y
    sudo apt-get autoremove
else
    echo "Skipping..."
fi

#
#
#   Install Essential Softwares
#
#

# Install GNOME Tweak Tool
printf "\n"
read -p "Do you want to install GNOME Tweak Tool & Shell Extensions?(Y/N)" INP
if [ "$INP" = "Y" ] || [ "$INP" = "y" ]
then
    printf "${CYAN}-----------------------------------\nInstalling GNOME Tweak Tool \n----------------------------------- ${NC}\n"
    sudo add-apt-repository ppa:webupd8team/gnome3 -y
    sudo apt-get update -y
    sudo apt-get install gnome-tweak-tool -y
    sudo apt-get install gnome-shell-extensions -y
else
    echo "Skipping..."
fi

# Installing synaptic package manager
printf "\n"
read -p "Do you want to install Synaptic Package Manager?(Y/N)" INP
if [ "$INP" = "Y" ] || [ "$INP" = "y" ]
then
    printf "${CYAN}-----------------------------------\nInstalling Synaptic Package Manager \n----------------------------------- ${NC}\n"
    sudo apt-get install synaptic -y
else
    echo "Skipping..."
fi

# Installing google chrome
printf "\n"
read -p "Do you want to install Google Chrome Stable?(Y/N)" INP
if [ "$INP" = "Y" ] || [ "$INP" = "y" ]
then
    printf "${CYAN}-----------------------------------\nInstalling Google Chrome Stable \n----------------------------------- ${NC}\n"
    mkdir ~/tmp
    printf "${CYAN}-----------------------------------\nGetting Google Chrome Stable \n----------------------------------- ${NC}\n"
    wget -O ~/tmp/chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb 
    sudo gdebi ~/tmp/chrome.deb -y
    rm -r ~/tmp/
else
    echo "Skipping..."
fi

# Installing VLC Media Player
printf "\n"
read -p "Do you want to install VLC Media Player?(Y/N)" INP
if [ "$INP" = "Y" ] || [ "$INP" = "y" ]
then
    printf "${CYAN}-----------------------------------\nInstalling VLC \n----------------------------------- ${NC}\n"
    sudo apt-get install vlc -y
else
    echo "Skipping..."
fi
