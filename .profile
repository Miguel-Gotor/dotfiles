# ~/.profile
# Executed by the command interpreter for login shells.
# Sourced by LightDM by default, even when the login shell is ZSH
# However the ZSH login shell sources ~/.zprofile (symlinked to this this file)

# Setting all these here makes them available to ttys

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Add TeX Live 2023 installation path
# PATH="/usr/local/texlive/2023/bin/x86_64-linux:$PATH"

# XDG Base Directory Specification
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# This one is already defined in Arch. Trying to overwrite, even with the same value, causes a infinite login loop on LightDM.
# export XDG_RUNTIME_DIR="/run/user/$UID"

# Dont store "less" history
export LESSHISTFILE=/dev/null

# Override OMZ defaults
export HISTSIZE=100000
export SAVEHIST=$HISTSIZE

# Clean up according to XDG BDS
export HISTFILE="$XDG_STATE_HOME/zsh/history"
export ZDOTDIR="$HOME/.config/zsh"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
# export XINITRC="$XDG_CONFIG_HOME/X11/.Xresources"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"

# Place xauthority file in a runtime directory with restricted access permissions and automatically cleaned up upon session termination
# This also causes infinite login loop on LightDM, which just won't honor custom XAUTHORITY
# export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
# Instead, this has to be add to lightm.conf:
# [LightDM]
# user-authority-in-system-dir=true
# greeter-show-manual-login=true

# Default programs
export EDITOR="vim"
export BROWSER="firefox-developer-edition"
export TERMINAL="kitty"
export READER="zathura"
export OPENER='rifle'
