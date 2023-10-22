# ~/.profile
# -----------------------------------------------------------------------------
# Executed by the command interpreter for login shells.
# Sourced by LightDM by default, even when the login shell is ZSH
# However the Zsh login shell sources ~/.zprofile (symlinked to this this file)
# Setting all these here makes them available to ttys aswell
# Those wont be changing that frequently, so having Zsh load all of these for
# every instance of the shell is a bit overkill

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

# Change grep default highlight color
# export GREP_COLORS='ms=01;31'
# export GREP_COLORS='ms=01;32'
# export GREP_COLORS='ms=01;33'
export GREP_COLORS='ms=01;34'
# export GREP_COLORS='ms=01;35'

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
export W3M_DIR="$XDG_STATE_HOME/w3m"

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
# export EDITOR="vim"
export EDITOR="nvim"
export BROWSER="firefox-developer-edition"
# export TERMINAL="kitty"
export TERMINAL="st"
export READER="zathura"

# Env var for lf file manager icons
# -----------------------------------
export OPENER='rifle'

export LF_ICONS="di=:ln=:ex=:fi=:*.ml=λ:*.mli=λ:*.styl=:*.scss=:*.py=:*.pyc=:*.pyd=:*.pyo=:*.php=:*.markdown=:*.md=:*.json=:*.js=:*.bmp=:*.gif=:*.ico=:*.jpeg=:*.jpg=:*.png=:*.svg=:*.svgz=:*.tga=:*.tiff=:*.xmb=:*.xcf=:*.xpm=:*.xspf=:*.xwd=:*.cr2=:*.dng=:*.3fr=:*.ari=:*.arw=:*.bay=:*.crw=:*.cr3=:*.cap=:*.data=:*.dcs=:*.dcr=:*drf=:*.eip=:*.erf=:*.fff=:*.gpr=:*.giiq=:*.k25=:*.kdc=:*.mdc=:.*mef=:*.mos=:.*.mrw=:.*.obm=:*.orf=:*.pef=:*.ptx=:*.pxn=:*.r3d=:*.raf=:*.raw=:*.rwl=:*.rw2=:*.rwz=:*.sr2=:*.srf=:*.srf=:*.srw=:*.tif=:*.x3f=:*.ejs=:*.htm=:*.html=:*.slim=:*.xml=:*.mustasche=:*.css=:*.less=:*.bat=:*.conf=:*.ini=:*.rc=:*.yml=:*.cfg=:*.rc=:*.rss=:*.coffee=:*.twig=:*.c++=:*.cc=:*.c=:*.cpp=:*.cxx=:*.c=:*.h=:*.hs=:*.lhs=:*.lua=:*.jl=:*.go=:*.ts=:*.db=:*.dump=:*.sql=:*.sln=:*.suo=:*.exe=:*.diff=:*.sum=:*.md5=:*.sha512=:*.scala=:*.java=:*.jar=:*.xul=:*.clj=:*.cljc=:*.pl=:*.pm=:*.t=:*.cljs=:*.edn=:*.rb=:*.fish=:*.sh=:*.bash=:*.dart=:*.f#=:*.fs=:*.fsi=:*.fsscript=:*.fsx=:*.rlib=:*.rs=:*.d=:*.erl=:*.hrl=:*.ai=:*.psb=:*.psd=:*.jsx=:*.vim=:*.vimrc=:*.aac=:*.anx=:*.asf=:*.au=:*.axa=:*.flac=:*.m2a=:*.m4a=:*.mid=:*.midi=:*.mp3=:*.mpc=:*.oga=:*.ogg=:*.ogx=:*.ra=:*.ram=:*.rm=:*.spx=:*.wav=:*.wma=:*.ac3=:*.avi=:*.flv=:*.mkv=:*.mov=:*.mov=:*.mp4=:*.mpeg=:*.mpg=:*.webm=:*.epub=:*.pdf=:*.fb2=:*.djvu=:*.7z=:*.apk=:*.bz2=:*.cab=:*.cpio=:*.deb=:*.gem=:*.gz=:*.gzip=:*.lh=:*.lzh=:*.lzma=:*.rar=:*.rpm=:*.tar=:*.tgz=:*.xz=:*.zip=:*.cbr=:*.cbz=:*.log=:*.doc=:*.docx=:*.adoc=:*.xls=:*.xls=:*.xlsmx=:*.pptx=:*.ppt=:*.Xdefaults=:*.Xresources=:*.bashprofile=:*.bash_profile=:*.bashrc=:*.dmrc=:*.d_store=:*.fasd=:*.gitconfig=:*.gitignore=:*.jack-settings=:*.mime.types=:*.nvidia-settings-rc=:*.pam_environment=:*.profile=:*.recently-used=:*.selected_editor=:*.xinitpurc=:*.zprofile=:*.yarnc=:*.snclirc=:*.tmux.conf=:*.urlview=:*.config=:*.ini=:*.user-dirs.dirs=:*.mimeapps.list=:*.offlineimaprc=:*.msmtprc=:*.Xauthority=:*.config=sub=:srt=:idx=:*.mbsyncrc=:*lfrc=:*.txt="
