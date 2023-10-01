# ~/.profile
# -----------------------------------------------------------------------------
# Executed by the command interpreter for login shells.
# Sourced by LightDM by default, even when the login shell is ZSH
# However the Zsh login shell sources ~/.zprofile (symlinked to this this file)
# Setting all these here makes them available to ttys aswell
# Those wont be changing that frequently, so having Zsh load all of these of
# every instance is a bit overkill

# PATH ------------------------------------------------------------------------
PATH="$HOME/bin:$PATH"
PATH="$HOME/.local/bin:$PATH"
# Add TeX Live 2023 installation path
PATH="/usr/local/texlive/2023/bin/x86_64-linux:$PATH"
# Prepend TSIM-LEON4 location to $PATH
# PATH="$HOME/Documents/tsim-leon4/tsim/linux-x64:$PATH"

# XDG Base Directory Specification --------------------------------------------
#
# Moved to: "etc/security/pam_env.conf" to make them available to the LightDM
# xsession wrapper script. This way we can manually config the display manager
# to honor de default XDG dirs, forcing to check XDG_CONFIG_HOME.
#
# export XDG_CONFIG_HOME="$HOME/.config"
# export XDG_CACHE_HOME="$HOME/.cache"
# export XDG_DATA_HOME="$HOME/.local/share"
# export XDG_STATE_HOME="$HOME/.local/state"

# History files ---------------------------------------------------------------

# Disable "less" history
export LESSHISTFILE=/dev/null

# Override OMZ defaults
export HISTSIZE=100000
export SAVEHIST=$HISTSIZE

# Disable Python history by loading custom startup script
export PYTHONSTARTUP=$XDG_CONFIG_HOME/python/.pythonrc.py

# Clean up according to XDG BDS -----------------------------------------------

export HISTFILE="$XDG_STATE_HOME/zsh/history"
export ZDOTDIR="$HOME/.config/zsh"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export MPLAYER_HOME="$XDG_CONFIG_HOME/mplayer"
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc

# Xauthority ------------------------------------------------------------------
# Place xauthority file in a runtime directory with restricted access
# permissions and automatically cleaned up upon session termination
# This also causes infinite login loop on LightDM, which just won't honor custom XAUTHORITY
# export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
# Instead, this has to be add to lightm.conf:
# [LightDM]
# user-authority-in-system-dir=true
# greeter-show-manual-login=true

# Default programs ------------------------------------------------------------
#
export EDITOR="vim"
export BROWSER="firefox-developer-edition"
export TERMINAL="kitty"
export READER="zathura"
