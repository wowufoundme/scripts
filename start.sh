#! /bin/bash
# A small script to run at the start of Ubuntu to initialize the
# environment.

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