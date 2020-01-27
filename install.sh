#!/bin/sh

set -e

gh_repo="mercode-jbrawn"
gh_desc="Mercode-Jbrawn"

echo "Copyleft 2019-2020 Mercode"
git pull origin master
sudo mkdir -p /usr/share/icons/mer-cursor
sudo cp -r -f ./theme/mer-cursor /usr/share/icons/
echo Done!
