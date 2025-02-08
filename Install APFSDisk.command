# APFSDisk
# (c) Copyright 2025 chris1111, All Right Reserved.
# This will install APFSDisk to get ride of (Incompatible Disk) From Sierra to Mojave
# Dependencies: /usr/bin/osascript/LaunchAgents
PARENTDIR=$(dirname "$0")
cd "$PARENTDIR"
# Declare some VARS
APP_NAME="APFSDisk"
SOURCE_PLIST="./Plist/com.chris1111.APFSDisk.plist"
SOURCE_SCRIPT="./APFSDisk"
./"Pics from Mojave"/seticon ./"Pics from Mojave"/Disk.icns ./APFSDisk/script
echo "= = = = = = = = = = = = = = = = = = = = = = = = =  "
echo "Install $APP_NAME"
echo "= = = = = = = = = = = = = = = = = = = = = = = = =  "
# install APFSDisk
printf -- '%s\n' "Insert Your Password To Procceed."
sudo cp -rp ./$SOURCE_PLIST /Library/LaunchAgents
sudo cp -rp ./$SOURCE_SCRIPT /Library/"Application Support"
sudo chmod 755 "/Library/Application Support/APFSDisk/script"
sudo chmod 644 /Library/LaunchAgents/com.chris1111.APFSDisk.plist
echo " = = = = = = = = = = = = = = = = = = = = = = = = = 
$APP_NAME install completed!
= = = = = = = = = = = = = = = = = = = = = = = = =  "
