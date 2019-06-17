# You can simply run this script with 'sudo' command
# Enter the password when prompted
# There might be some packages that may be preinstalled on your system already
# Don't worry the script will automatically skip those and update
# This might some time and definitely some internet so keep in mind to have those 
# things ready.
#
# To directly run this script, run the below command:
# wget https://raw.githubusercontent.com/wowufoundme/scripts/master/build_dependencies.sh && sudo chmod a+x ./build_dependencies.sh && sudo ./build_dependencies.sh
#
# Developed by Shubhkirti Sharma

# Update the Linux environment
sudo apt-get update -y

# Install the abd and fastboot tools
sudo apt-get install adb -y
sudo apt-get install fastboot -y

# Remove the previous OpenJDK versions and install OpenJDK-8
# sudo apt-get remove openjdk*
# sudo apt-get install openjdk-8-jdk openjdk-8-jre -y

# Install required dependency packages
sudo apt-get install build-essentail -y
sudo apt-get install git -y
sudo apt-get install git-core -y
sudo apt-get install zip -y
sudo apt-get install curl -y
sudo apt-get install gnupg -y
sudo apt-get install flex -y
sudo apt-get install bison -y
sudo apt-get install gperf -y
sudo apt-get install libsdl1.2-dev -y
sudo apt-get install libesd0-dev -y
sudo apt-get install libwxgtk2.8-dev -y
sudo apt-get install squashfs-tools -y
sudo apt-get install libncurses5-dev -y
sudo apt-get install zlib1g-dev -y
sudo apt-get install pngcrush -y
sudo apt-get install schedtool -y
sudo apt-get install libxml2 -y
sudo apt-get install libxml2-utils -y
sudo apt-get install xsltproc -y
sudo apt-get install lzop -y
sudo apt-get install libc6-dev -y
sudo apt-get install schedtool -y
sudo apt-get install g++-multilib -y
sudo apt-get install lib32z1-dev -y
sudo apt-get install lib32ncurses5-dev -y
sudo apt-get install lib32readline-gplv2-dev -y
sudo apt-get install gcc-multilib -y
sudo apt-get install maven -y
sudo apt-get install tmux -y
sudo apt-get install screen -y
sudo apt-get install w3m -y
sudo apt-get install ncftp -y

# Intialize repo tool in ~/bin directory
wget https://raw.githubusercontent.com/wowufoundme/blobs/master/initrepo.sh && sudo chmod a+x ./initrepo.sh && . initrepo.sh

CYAN='\033[0;36m'
NC='\033[0m' 
printf "\n\n---------------------------------------------------\n"
printf "${CYAN} SCRIPT COMPLETE! BUILD ENVIRONMENT READY ${NC}\n"
printf "${CYAN} Start building your ROM by running repo init and sync ${NC}\n"
