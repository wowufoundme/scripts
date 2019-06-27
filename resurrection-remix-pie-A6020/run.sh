#!/bin/bash
# Intitialize GIT repository
repo init -u https://github.com/ResurrectionRemix/platform_manifest.git -b pie

# Sync the sources
repo sync -f --force-sync --no-clone-bundle

# Call the dependencies
wget -O ./dependencies.sh https://raw.githubusercontent.com/wowufoundme/scripts/master/resurrection-remix-pie-A6020/get_dependencies.sh
chmod +x ./dependencies
. dependencies.sh
