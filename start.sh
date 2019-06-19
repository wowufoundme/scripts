#! /bin/bash
# A small script to run at the start of Ubuntu to initialize the
# environment.

# Set color variables
CYAN='\033[0;36m'
NC='\033[0m' 

# Updating Environment
read -p "Do you want to update the environment?(Y/N)" INP
if [ "$INP" = "Y" ] || [ "$INP" = "y" ]
then
    printf "${CYAN}-----------------------------------\n      Updating environment \n----------------------------------- ${NC}\n"
    sudo apt-get update
else
    echo "Skipping..."
fi