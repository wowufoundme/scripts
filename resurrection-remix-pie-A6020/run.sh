#!/bin/bash
# Intitialize GIT repository
repo init -u https://github.com/ResurrectionRemix/platform_manifest.git -b pie

# Sync the sources
repo sync -f --force-sync --no-clone-bundle

# Call the dependencies
. get_dependencies.sh
