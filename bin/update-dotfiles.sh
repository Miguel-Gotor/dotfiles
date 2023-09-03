#!/bin/sh
# Update local git repo by copying those files that have changed
# Ensure the script is executed from $HOME, and exits on any error
set -e
cd "$HOME" || exit

dotfiles_dir="./dotfiles"

# Use relative paths to prevent the "--parents" option from copying unnnecesary
# parent directories (/home/user/...) while preserving directory structure:

cp --parents -u "./.config/Code - OSS/User/settings.json" $dotfiles_dir
cp --parents -ru "./.config/cava" $dotfiles_dir
cp --parents -ru "./.config/dunst" $dotfiles_dir
cp --parents -ru "./.config/gtk-2.0" $dotfiles_dir
cp --parents -ru "./.config/gtk-3.0" $dotfiles_dir
cp --parents -ru "./.config/gtk-4.0" $dotfiles_dir
cp --parents -ru "./.config/i3" $dotfiles_dir
cp --parents -ru "./.config/i3blocks" $dotfiles_dir
cp --parents -ru "./.config/i3status" $dotfiles_dir
cp --parents -ru "./.config/kitty" $dotfiles_dir
cp --parents -ru "./.config/mpv" $dotfiles_dir
cp --parents -ru "./.config/picom" $dotfiles_dir
cp --parents -ru "./.config/ranger" $dotfiles_dir
cp --parents -ru "./.config/vim" $dotfiles_dir
cp --parents -ru "./.config/X11" $dotfiles_dir
cp --parents -ru "./.config/zsh" $dotfiles_dir
cp --parents -ru "./.config/wgetrc" $dotfiles_dir
cp --parents -ru "./.config/lf" $dotfiles_dir
cp --parents -ru "./bin" $dotfiles_dir
cp --parents -ru "./Pictures/Wallpapers" $dotfiles_dir
cp --parents -ru "./Pictures/Screenshots/Ricing" $dotfiles_dir
cp --parents -ru "./.profile" $dotfiles_dir
cp --parents -ru "./.mozilla/firefox/hl9gcn50.default-release/chrome/userChrome.css" $dotfiles_dir
cp --parents -ru "./.local/share/applications" $dotfiles_dir

# System-wide config files worth tracking.
# Not dotfiles per se, but modified to make LightDM XDG-BDS compliant
cp --parents -ru "/etc/lightdm/Xsession" $dotfiles_dir
cp --parents -ru "/etc/security/pam_env.conf" $dotfiles_dir

echo "dotfiles updated"
