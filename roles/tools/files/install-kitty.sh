#!/bin/bash

LOCAL=$(dirname "$0")
HOME="$1"
DESKTOP="$2"

[[ -z "$HOME" ]] && echo "Missing home path." && exit 1
[[ -z "$DESKTOP" ]] && echo "Missing kitty desktop integration path." && exit 1

# Install Kitty from binaries
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin launch=n dest="$LOCAL"

# Desktop integration on Linux - create a symbolic link to add kitty to PATH (assuming ~/.local/bin is in your PATH)
ln -s $LOCAL/kitty.app/bin/kitty /usr/local/bin

# Desktop integration
# Place the kitty.desktop file somewhere it can be found by the OS
cp $LOCAL/kitty.app/share/applications/kitty.desktop $DESKTOP
# If you want to open text files and images in kitty via your file manager also add the kitty-open.desktop file
cp $LOCAL/kitty.app/share/applications/kitty-open.desktop $DESKTOP
# Update the path to the kitty icon in the kitty.desktop file
sed -i "s|Icon=kitty|Icon=$LOCAL/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" $DESKTOP/kitty*.desktop
sed -i "s|Exec=kitty|Exec=$LOCAL/kitty.app/bin/kitty|g" $DESKTOP/kitty*.desktop

