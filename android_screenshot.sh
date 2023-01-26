#!/bin/bash
DATE=$(date +"%Y%m%d%H%M%S")
FILE_NAME=${DATE}.png
FILE_PATH=/storage/emulated/0/${FILE_NAME}
ADB_PATH=/Users/you/Library/Android/sdk/platform-tools/adb
$ADB_PATH shell screencap -p $FILE_PATH
$ADB_PATH pull $FILE_PATH
$ADB_PATH shell rm $FILE_PATH
sips -Z 896 ${FILE_NAME}
mv ${FILE_NAME} ~/Downloads/
open ~/Downloads/${FILE_NAME}
open ~/Downloads/
