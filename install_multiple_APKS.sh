###############################################################
#                    					      #
#	INSTALL MULTIPLE APKS AT ONCE WITH THIS	              #
#	SCRIPT.						      #
#	MADE ON BASH					      #
#							      #
#	Spaces must be removed from                           #
#       file names in order to install them.                  #
#							      #
# 	Run this script inside the directory		      #
#	containing the APK files.			      #
#							      #
###############################################################

echo "**********| Renaming to remove spaces |**********"
find $1 -name "* *.apk" -type f -print0 |   while read -d $'\0' f; do mv -v "$f" "${f// /_}"; done


echo "**********| Installing/Make sure device is connected and USB debugging on |**********"
for file in *.apk; do adb install $file; done
