#!/bin/sh
# Update local git repo by copying those files that have changed
# Ensure the script is executed from $HOME
cd "$HOME" || exit

# Use relative paths to prevent the "--parents" option from copying unnnecesary
# parent directories (/home/user/...) while preserving directory structure:

cp --parents -u "./.config/Code - OSS/User/settings.json" "./dotfiles"
cp --parents -ru "./.config/cava" "./dotfiles"
cp --parents -ru "./.config/dunst" "./dotfiles"
cp --parents -ru "./.config/gtk-2.0" "./dotfiles"
cp --parents -ru "./.config/gtk-3.0" "./dotfiles"
cp --parents -ru "./.config/gtk-4.0" "./dotfiles"
cp --parents -ru "./.config/i3" "./dotfiles"
cp --parents -ru "./.config/i3blocks" "./dotfiles"
cp --parents -ru "./.config/i3status" "./dotfiles"
cp --parents -ru "./.config/kitty" "./dotfiles"
cp --parents -ru "./.config/leafpad" "./dotfiles"
cp --parents -ru "./.config/libfm" "./dotfiles"
cp --parents -ru "./.config/mpv" "./dotfiles"
cp --parents -ru "./.config/pcmanfm" "./dotfiles"
cp --parents -ru "./.config/picom" "./dotfiles"
cp --parents -ru "./.config/ranger" "./dotfiles"
cp --parents -ru "./.config/vim" "./dotfiles"
cp --parents -ru "./.config/X11" "./dotfiles"
cp --parents -ru "./.config/zsh" "./dotfiles"
cp --parents -ru "./.config/wgetrc" "./dotfiles"
cp --parents -ru "./bin" "./dotfiles"
cp --parents -ru "./Pictures/Wallpapers" "./dotfiles"
cp --parents -ru "./.profile" "./dotfiles"
cp --parents -ru "./.mozilla/firefox/hl9gcn50.default-release/chrome/userChrome.css" "./dotfiles"
echo "dotfiles updated"
