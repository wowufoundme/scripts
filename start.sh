#! /bin/bash
# A small script to run at the start of a new Ubuntu installation to initialize the
# environment and set up important packages

# Set color variables
CYAN='\033[0;36m'
NC='\033[0m' 

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
    printf "${CYAN}-----------------------------------\nUpdating environment \n----------------------------------- ${NC}\n"
    sudo apt-get upgrade -y
else
    echo "Skipping..."
fi